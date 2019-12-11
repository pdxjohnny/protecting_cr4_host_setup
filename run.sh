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

sudo modprobe kvm-intel nested=1
sudo modprobe kvm
sudo modprobe -rf kvm-intel
sudo modprobe -rf kvm
sudo cp "${HOME}/linux-combined/arch/x86/kvm/"*.ko "/lib/modules/$(uname -r)/kernel/arch/x86/kvm/"
sudo modprobe kvm
sudo modprobe kvm-intel nested=1

INIT=${INIT:-'/usr/lib/systemd/systemd'}


mkdir -p "${HOME}/chroot${HOME}/seabios/out/"
cp "${HOME}/seabios/out/bios.bin" "${HOME}/chroot${HOME}/seabios/out/bios.bin"
sudo cp "${HOME}/linux-combined/arch/x86/boot/bzImage" "${HOME}/chroot/boot/bzImage"
sudo cp "${HOME}/linux-combined/arch/x86/boot/bzImage" "${HOME}/chroot${HOME}/chroot/boot/bzImage"
sudo chmod 644 "${HOME}/chroot/boot/bzImage"
sudo chmod 644 "${HOME}/chroot${HOME}/chroot/boot/bzImage"
sudo "${HOME}/qemu/build/x86_64-softmmu/qemu-system-x86_64" $@ \
  -m 8192M \
  -chardev \
    "file,path=${HOME}/seabios.log,id=seabios" \
  -device \
    isa-debugcon,iobase=0x402,chardev=seabios \
  -enable-kvm \
  -bios \
    "${HOME}/seabios/out/bios.bin" \
  -kernel \
    "${HOME}/chroot/boot/bzImage" \
  -nographic \
  -cpu \
    host \
  -net \
    nic,model=virtio \
  -net \
    user,hostfwd=tcp::2222-:22,hostfwd=tcp::4444-:2222 \
  -append \
    "selinux=0 enforcing=0 console=ttyS0 rootfstype=9p root=/dev/root ro rootflags=trans=virtio,version=9p2000.u nokaslr init=${INIT}" \
  -fsdev \
    local,id=fsdev-root,path="${CHROOT}",security_model=passthrough,readonly \
  -device \
    virtio-9p-pci,fsdev=fsdev-root,mount_tag=/dev/root


#     "selinux=0 enforcing=0 console=ttyS0 root=/dev/sda rw nokaslr init=${INIT}" \
#   -drive file="${IMAGE}",index=0,media=disk
