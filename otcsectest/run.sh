#!/usr/bin/env bash
set -xe

export ROOT="/tmp/ramdisk"

export GUEST_ROOT="${ROOT}/guest_root"
export QEMU="${ROOT}/qemu"
export LINUX_SRC="${ROOT}/linux"
export LINUX_BUILT="${ROOT}/build"
export INITRD_GZ="${ROOT}/initrd.gz"
export INITRD="${ROOT}/initrd"
export INIT_C="${ROOT}/init.c"

export INSTALL_MOD_PATH="${INITRD}"
export INSTALL_PATH="${INITRD}/boot"

export TEMPDIR=$(mktemp -d)

cleanup() {
  rm -rf "${TEMPDIR}"
}

trap cleanup EXIT

export KERNEL_VERSION=$(grep 'Kernel Configuration' "${LINUX_BUILT}/.config"  | awk '{print $3}')

mkdir -p "${INSTALL_PATH}"

gcc -static "${INIT_C}" -o "${INITRD}/init"

time make -C "${LINUX_SRC}" -j $(($(nproc)*4)) O="${LINUX_BUILT}" bzImage
time make -C "${LINUX_SRC}" -j $(($(nproc)*4)) O="${LINUX_BUILT}" M=fs/fuse/
time make -C "${LINUX_SRC}" -j $(($(nproc)*4)) O="${LINUX_BUILT}" install
time make -C "${LINUX_SRC}" -j $(($(nproc)*4)) O="${LINUX_BUILT}" modules_install
find $INSTALL_MOD_PATH -type f -not \( -name init -or -name 'fuse.ko' -or -name 'virtiofs.ko' -or -name "\*${KERNEL_VERSION}\*" \) -delete
find $INSTALL_MOD_PATH -empty -type d -delete

find $INSTALL_MOD_PATH

(cd $INSTALL_MOD_PATH && find . | cpio --quiet -H newc -o | gzip -9 -n > $INSTALL_MOD_PATH/../initrd.gz)

sudo "${QEMU}/build/virtiofsd" --socket-path="${TEMPDIR}/vhost-fs.sock" \
  -o source="${GUEST_ROOT}" -o allow_root -d -f &

sudo $(find "${QEMU}" -name qemu-system-x86_64 | head -n 1) \
  -enable-kvm \
  -no-reboot \
  -nographic \
  -m 8192 \
  -cpu host \
  -initrd "${INITRD_GZ}"  \
  -kernel "${LINUX_BUILT}/arch/x86/boot/bzImage" \
  -append 'console=ttyS0 initrd=/dev/ram0 root=/dev/ram0 ro kernel.printk=15' \
  -chardev socket,id=char0,path="${TEMPDIR}/vhost-fs.sock" \
  -device vhost-user-fs-pci,chardev=char0,tag=myfs

# -append 'console=ttyS0 init=/bin/sh rootfstype=virtiofs root=myfs ro rootflags=trans=virtio' \
