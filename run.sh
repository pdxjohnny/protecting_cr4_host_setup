#!/usr/bin/env bash
set -xe

KERNEL_VERSION=${KERNEL_VERSION:-"$(uname -r)"}
CHROOT=${CHROOT:-"${HOME}/chroot"}
IMAGE=${IMAGE:-"${HOME}/image.iso"}
INIT=${INIT:-'/usr/lib/systemd/systemd'}

sudo modprobe nbd max_part=8

sudo umount -R "${CHROOT}" || echo image was not mounted at "${CHROOT}"
sudo qemu-nbd --disconnect /dev/nbd0 || echo image was not connected as nbd

mount_image() {
  sudo qemu-nbd --connect=/dev/nbd0 "${HOME}/image.qcow2"
  sudo mount /dev/nbd0p3 "${CHROOT}"
  sudo mount /dev/nbd0p1 "${CHROOT}/boot"
}

# sudo modprobe kvm-intel nested=1
if [ -d "/sys/module/kvm_intel" ]; then
  sudo modprobe -rf kvm-intel
fi
if [ -d "/sys/module/kvm" ]; then
  sudo modprobe -rf kvm
fi
sudo mkdir -p "${CHROOT}/lib/modules/${KERNEL_VERSION}/kernel/arch/x86/kvm/"
sudo mkdir -p "${CHROOT}/lib/modules/${KERNEL_VERSION}/kernel/virt/lib/"
sudo cp "${HOME}/linux-combined/arch/x86/kvm/"*.ko "/lib/modules/${KERNEL_VERSION}/kernel/arch/x86/kvm/"
sudo cp "${HOME}/linux-combined/virt/lib/irqbypass.ko" "${CHROOT}/lib/modules/${KERNEL_VERSION}/kernel/virt/lib/irqbypass.ko"
sudo cp "${HOME}/linux-combined/arch/x86/kvm/"*.ko "${CHROOT}/lib/modules/${KERNEL_VERSION}/kernel/arch/x86/kvm/"
sudo modprobe irqbypass
sudo modprobe kvm
# sudo modprobe kvm-intel
sudo modprobe kvm-intel nested=1

if [ "x${RELOAD}" != "x" ]; then
  exit 0
fi

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
  sudo mount /dev/nbd0p3 "${CHROOT}"
  sudo mkdir "${CHROOT}/boot"
  sudo mount /dev/nbd0p1 "${CHROOT}/boot"
  sudo cp -r "${HOME}/chroot.bak/"* "${CHROOT}"
  sudo umount -R "${CHROOT}"
  sudo qemu-nbd --disconnect /dev/nbd0
fi

mount_image

sudo mkdir -p "${CHROOT}/lib/modules/${KERNEL_VERSION}/kernel/arch/x86/kvm/"
sudo mkdir -p "${CHROOT}/lib/modules/${KERNEL_VERSION}/kernel/virt/lib/"
sudo mkdir -p "${CHROOT}/lib/modules/${KERNEL_VERSION}/kernel/fs/fat/"
sudo cp "${HOME}/linux-combined/fs/fat/"*.ko "${CHROOT}/lib/modules/${KERNEL_VERSION}/kernel/fs/fat/"
sudo cp "${HOME}/linux-combined/virt/lib/irqbypass.ko" "${CHROOT}/lib/modules/${KERNEL_VERSION}/kernel/virt/lib/irqbypass.ko"
sudo cp "${HOME}/linux-combined/arch/x86/kvm/"*.ko "${CHROOT}/lib/modules/${KERNEL_VERSION}/kernel/arch/x86/kvm/"

sudo mkdir -p "${CHROOT}/${HOME}/seabios/out/"
sudo cp "${HOME}/seabios/out/bios.bin" "${CHROOT}/${HOME}/seabios/out/bios.bin"

sudo cp "${HOME}/linux-combined/arch/x86/boot/bzImage" "${CHROOT}/boot/bzImage"
sudo cp "${HOME}/linux-combined/arch/x86/boot/bzImage" "${CHROOT}/boot/bzImage.efi"
sudo chmod 644 "${CHROOT}/boot/bzImage"

echo "FS0:\\bzImage.efi console=ttyS0 crashkernel=256M@32M resume=/dev/sda2 root=/dev/sda3 rw nokaslr no_console_suspend init=/usr/bin/init.sh" | \
  sudo tee "${CHROOT}/boot/startup.nsh"

sudo chown -R "${USER}:${USER}" "${CHROOT}/${HOME}"

mkdir -p "${CHROOT}/${HOME}/seabios/out/"
cp "${HOME}/seabios/out/bios.bin" "${CHROOT}/${HOME}/seabios/out/bios.bin"
sudo cp "${HOME}/linux-combined/arch/x86/boot/bzImage" "${CHROOT}/boot/bzImage"
sudo chmod 644 "${CHROOT}/boot/bzImage"

if [ "x${DO}" != "x" ]; then
  sudo tee "${CHROOT}/do" <<<"${DO}"
  cat "${CHROOT}/do"
fi

sudo sync
sudo umount -R "${CHROOT}"
sudo qemu-nbd --disconnect /dev/nbd0

trap mount_image EXIT

rm -f /tmp/qemudebugpipe
mkfifo /tmp/qemudebugpipe

sudo $LEADING "${HOME}/qemu/build/x86_64-softmmu/qemu-system-x86_64" "$@" \
  -smp cpus=2 \
  -m 8192M \
  -enable-kvm \
  -bios \
    "${HOME}/OVMF.fd" \
  -nographic \
  -cpu \
    host \
  -drive file="${HOME}/image.qcow2",index=0,media=disk,format=qcow2 $TRAILING
