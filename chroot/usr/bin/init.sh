#!/usr/bin/bash
set -xe

source /etc/environment
export PATH

CMDLINE="console=ttyS0 init=/usr/bin/init.sh rootfstype=9p root=/dev/root rootflags=trans=virtio,version=9p2000.u rw"

mkdir -p /sys
mount -t sysfs sysfs /sys -n
mkdir -p /proc
mount -t proc proc /proc -n
mkdir -p /run
mount -t tmpfs tmpfs /run -n
/usr/sbin/insmod "/lib/modules/$(uname -r)/kernel/virt/lib/irqbypass.ko"
/usr/sbin/insmod "/lib/modules/$(uname -r)/kernel/arch/x86/kvm/kvm.ko"
/usr/sbin/insmod "/lib/modules/$(uname -r)/kernel/arch/x86/kvm/kvm-intel.ko"
ulimit -u unlimited
/usr/sbin/swapon /dev/sda

do_guest() {
  sudo -u johnsa1 bash -c 'cd /home/johnsa1 && HOME=/home/johnsa1 /home/johnsa1/run.sh'
}

do_bash() {
  exec /usr/bin/bash
}

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

# do_guest
do_bash
