#!/usr/bin/env bash
set -xe

CHROOT=${CHROOT:-"${HOME}/chroot"}
IMAGE=${IMAGE:-"${HOME}/image.iso"}

# sudo rm -rf router
# if [ ! -d router ]; then
#   sudo rm -rf router
#   name=$(basename $(mktemp -u routerXXXXXX))
#   docker build -t router .
#   docker run -ti --name $name router echo hi
#   mkdir router
#   docker export $name | sudo tar x -C router
#   docker rm $name
# fi

# if [ ! -f "${IMAGE}" ]; then
#   # Find size of directory in bytes
#   bytes=$(sudo du --summarize "${CHROOT}" | awk '{print $1}')
#   # Add 10 megabytes(ish) to be safe
#   bytes=$(("${bytes}" + 10000))
#   # Convert megabytes to be kilobytes
#   bytes=$(("${bytes}" * 1024))
#   # Create the image
#   fallocate -l $bytes "${IMAGE}"
#   MDIR=$(mktemp -d)
#   LOOP=$(sudo losetup --find --show "${IMAGE}")
#   sudo mkfs.ext4 "${LOOP}"
#   sudo mount -o rw "${LOOP}" "${MDIR}"
#   sudo cp -r router/* "${MDIR}/"
#   sudo umount "${MDIR}"
#   rm -rf "${MDIR}"
#   sudo losetup -d "${LOOP}"
# fi

# sudo modprobe kvm-intel nested=1
# sudo modprobe kvm
# sudo modprobe -rf kvm-intel
# sudo modprobe -rf kvm
sudo mkdir -p "${CHROOT}/lib/modules/$(uname -r)/kernel/arch/x86/kvm/"
sudo mkdir -p "${CHROOT}/lib/modules/$(uname -r)/kernel/virt/lib/"
sudo cp "${HOME}/linux-combined/arch/x86/kvm/"*.ko "/lib/modules/$(uname -r)/kernel/arch/x86/kvm/"
sudo cp "${HOME}/linux-combined/virt/lib/irqbypass.ko" "${CHROOT}/lib/modules/$(uname -r)/kernel/virt/lib/irqbypass.ko"
sudo cp "${HOME}/linux-combined/arch/x86/kvm/"*.ko "${CHROOT}/lib/modules/$(uname -r)/kernel/arch/x86/kvm/"
sudo modprobe kvm
sudo modprobe kvm-intel nested=1

if [ ! -f "${HOME}/image.qcow2" ]; then
  qemu-img create -f qcow2 "${HOME}/image.qcow2" 20G
  sudo modprobe nbd max_part=8
  sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
  sudo parted /dev/nbd0 << 'EOF'
mklabel gpt
mkpart primary fat32 1MiB 261MiB
set 1 esp on
mkpart primary linux-swap 261MiB 10491MiB
mkpart primary ext4 10491MiB 100%
EOF
  sudo mkfs.fat -F32 /dev/nbd0p1
  sudo mkswap /dev/nbd0p2
  sudo mkfs.ext4 /dev/nbd0p3
  sudo qemu-nbd --disconnect /dev/nbd0
fi

sudo qemu-nbd --connect=/dev/nbd0 "${HOME}/image.qcow2"
sudo mount /dev/nbd0p3 /mnt
sudo mount /dev/nbd0p1 /mnt/boot

INIT=${INIT:-'/usr/lib/systemd/systemd'}
CHROOT="/mnt"

sudo mkdir -p "${CHROOT}/lib/modules/$(uname -r)/kernel/arch/x86/kvm/"
sudo mkdir -p "${CHROOT}/lib/modules/$(uname -r)/kernel/virt/lib/"
sudo cp "${HOME}/linux-combined/virt/lib/irqbypass.ko" "${CHROOT}/lib/modules/$(uname -r)/kernel/virt/lib/irqbypass.ko"
sudo cp "${HOME}/linux-combined/arch/x86/kvm/"*.ko "${CHROOT}/lib/modules/$(uname -r)/kernel/arch/x86/kvm/"
sudo cp "${HOME}/seabios/out/bios.bin" "${CHROOT}/${HOME}/seabios/out/bios.bin"
sudo cp "${HOME}/linux-combined/arch/x86/boot/bzImage" "${CHROOT}/boot/bzImage"
sudo cp "${HOME}/linux-combined/arch/x86/boot/bzImage" "${CHROOT}/boot/bzImage.efi"
sudo chmod 644 "${CHROOT}/boot/bzImage"
echo "FS0:\\bzImage.efi console=ttyS0 root=/dev/sda3 rw nokaslr init=/usr/bin/uefi-setup.sh" | \
  sudo tee "${CHROOT}/boot/startup.nsh"

sudo sync
sudo umount -R /mnt
sudo qemu-nbd --disconnect /dev/nbd0

if [ ! -f "${HOME}/swapfile" ]; then
  sudo fallocate -l 10g "${HOME}/swapfile"
  sudo mkswap "${HOME}/swapfile"
fi

# lsblk -o NAME,PARTUUID /dev/nbd0
#   -kernel \
#     "${HOME}/chroot/boot/bzImage" \
#   -append \
#     "console=ttyS0 root=PARTUUID=c87e1069-a73f-4529-a6d4-370a1397ef03 ro nokaslr init=${INIT} ${CMDLINE}" \
# 
mkdir -p "${HOME}/chroot${HOME}/seabios/out/"
cp "${HOME}/seabios/out/bios.bin" "${HOME}/chroot${HOME}/seabios/out/bios.bin"
sudo cp "${HOME}/linux-combined/arch/x86/boot/bzImage" "${HOME}/chroot/boot/bzImage"
sudo chmod 644 "${HOME}/chroot/boot/bzImage"
sudo "${HOME}/qemu/build/x86_64-softmmu/qemu-system-x86_64" $@ \
  -smp cpus=4 \
  -m 8192M \
  -enable-kvm \
  -bios \
    "${HOME}/OVMF.fd" \
  -nographic \
  -cpu \
    host \
  -drive file="${HOME}/image.qcow2",index=0,media=disk,format=qcow2
