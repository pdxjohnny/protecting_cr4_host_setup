#!/usr/bin/env bash
set -xe

CHROOT=${CHROOT:-"${HOME}/chroot"}
INIT=${INIT:-'/usr/lib/systemd/systemd'}

INIT='/usr/bin/rebooter'

sudo "${HOME}/qemu/build/x86_64-softmmu/qemu-system-x86_64" $@ \
  -smp cpus=2 \
  -m 2048M \
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
    user,hostfwd=tcp::2222-:22 \
  -append \
    "selinux=0 enforcing=0 console=ttyS0 rootfstype=9p root=/dev/root rootflags=trans=virtio,version=9p2000.u ro nokaslr init=${INIT}" \
  -fsdev \
    local,id=fsdev-root,path="${CHROOT}",security_model=passthrough,readonly \
  -device \
    virtio-9p-pci,fsdev=fsdev-root,mount_tag=/dev/root
