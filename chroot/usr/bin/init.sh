#!/usr/bin/bash
set -xe

source /etc/environment
export PATH

CMDLINE="console=ttyS0 init=/usr/bin/init.sh rootfstype=9p root=/dev/root rootflags=trans=virtio,version=9p2000.u rw"

mkdir -p /sys
mount -t sysfs sysfs /sys -n
mkdir -p /proc
mount -t proc proc /proc -n
ulimit -u unlimited

do_kexec() {
  echo "Kexecing..."
  # /usr/sbin/kexec --append="${CMDLINE}" -l /boot/bzImage
  # /usr/sbin/kexec -e
  /usr/sbin/kexec --append="${CMDLINE}" -f /boot/bzImage
}

do_reboot() {
  echo "Rebooting..."
  sleep 2
  /usr/sbin/reboot
  
  while test 1; do
    echo "Waiting for reboot..."
    sleep 1
  done
}

do_kexec
