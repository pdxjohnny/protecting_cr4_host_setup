#!/usr/bin/env bash
set -xe

KERNEL=${KERNEL:-'/boot/bzImage'}
INIT=${INIT:-'/usr/lib/systemd/systemd'}

INIT='/usr/bin/rebooter'

sudo "${HOME}/qemu/build/x86_64-softmmu/qemu-system-x86_64" $@ \
  -smp cpus=2 \
  -m 2048M \
  -enable-kvm \
  -bios \
    "${HOME}/seabios/out/bios.bin" \
  -kernel \
    "${KERNEL}" \
  -nographic \
  -cpu \
    host \
  -net \
    nic,model=virtio \
  -net \
    user,hostfwd=tcp::2222-:22 \
  -append \
    "selinux=0 enforcing=0 console=ttyS0 rootfstype=9p root=/dev/root rootflags=trans=virtio,version=9p2000.L ro nokaslr pv_cr_pin init=${INIT}" \
  -fsdev \
    local,id=fsdev-root,path=/,security_model=passthrough,readonly \
  -device \
    virtio-9p-pci,fsdev=fsdev-root,mount_tag=/dev/root
