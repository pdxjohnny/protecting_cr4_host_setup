#!/usr/bin/bash
set -xe

source /etc/environment
export PATH="/usr/sbin:/usr/bin:${PATH}"

mkdir -p /sys
mount -t sysfs sysfs /sys -n
mount -t efivarfs efivarfs /sys/firmware/efi/efivars
mkdir -p /proc
mount -t proc proc /proc -n
mkdir -p /run
mount -t tmpfs tmpfs /run -n
/usr/sbin/insmod "/lib/modules/$(uname -r)/kernel/virt/lib/irqbypass.ko"
/usr/sbin/insmod "/lib/modules/$(uname -r)/kernel/arch/x86/kvm/kvm.ko"
/usr/sbin/insmod "/lib/modules/$(uname -r)/kernel/arch/x86/kvm/kvm-intel.ko"
ulimit -u unlimited
/usr/sbin/swapon /dev/sda2

do_guest() {
  sudo -u johnsa1 bash -c 'cd /home/johnsa1 && HOME=/home/johnsa1 /home/johnsa1/run.sh'
}

do_bash() {
  exec /usr/bin/bash
}

do_kexec() {
  echo "Kexecing..."
  /usr/sbin/kexec --append="$(cat /proc/cmdline)" -f /boot/bzImage
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
