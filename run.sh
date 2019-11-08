#!/usr/bin/env bash
set -xe

CHROOT=${CHROOT:-"${HOME}/chroot"}
IMAGE=${IMAGE:-"${HOME}/chroot.img"}

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

sudo modprobe kvm
sudo modprobe kvm-intel
sudo modprobe -rf kvm-intel
sudo modprobe -rf kvm
sudo cp "${HOME}/linux-combined/arch/x86/kvm/"*.ko "/lib/modules/5.3.0+/kernel/arch/x86/kvm/"
sudo modprobe kvm
sudo modprobe kvm-intel

sudo cp "${HOME}/linux-combined/arch/x86/boot/bzImage" "${HOME}/chroot/boot/bzImage"
sudo chmod 644 "${HOME}/chroot/boot/bzImage"
exec "${HOME}/qemu/build/x86_64-softmmu/qemu-system-x86_64" $@ \
  -no-reboot \
  -enable-kvm \
  -kernel \
    "${HOME}/chroot/boot/bzImage" \
  -append \
    'console=ttyS0 init=/usr/bin/init.sh rootfstype=9p root=/dev/root rootflags=trans=virtio,version=9p2000.u rw nokaslr' \
  -nographic \
  -cpu \
    host \
  -fsdev \
    local,id=fsdev-root,path="${HOME}/chroot",security_model=passthrough \
  -device \
    virtio-9p-pci,fsdev=fsdev-root,mount_tag=/dev/root
