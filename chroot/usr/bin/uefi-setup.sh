#!/usr/bin/bash
set -xe

source /etc/environment
export PATH="/usr/sbin:/usr/bin:${PATH}"

if [[ ! -d /sys/firmware ]]; then
  mkdir -p /sys
  mount -t sysfs sysfs /sys -n
  if [ -d /sys/firmware/efi/efivars ]; then
    mount -t efivarfs efivarfs /sys/firmware/efi/efivars
  fi
  mkdir -p /proc
  mount -t proc proc /proc -n
  mkdir -p /run
  mount -t tmpfs tmpfs /run -n
  /usr/sbin/insmod "/lib/modules/$(uname -r)/kernel/fs/fat/fat.ko"
  /usr/sbin/insmod "/lib/modules/$(uname -r)/kernel/fs/fat/vfat.ko"
  /usr/sbin/insmod "/lib/modules/$(uname -r)/kernel/virt/lib/irqbypass.ko"
  /usr/sbin/insmod "/lib/modules/$(uname -r)/kernel/arch/x86/kvm/kvm.ko"
  /usr/sbin/insmod "/lib/modules/$(uname -r)/kernel/arch/x86/kvm/kvm-intel.ko"
  ulimit -u unlimited
  /usr/sbin/swapon /dev/sda2
  mount /dev/sda1 /boot
fi

# Delete if already exists (to update .efi stub)
BOOTNUM=$(/usr/sbin/efibootmgr | grep "Fedora Linux" | awk '{print $1}' | sed -e 's/Boot//g' -e 's/\*//g')
if [ "x${BOOTNUM}" != "x" ]; then
  /usr/sbin/efibootmgr -B -b "${BOOTNUM}"
fi

fsck /dev/sda1

/usr/sbin/efibootmgr --disk /dev/sda --part 1 --create --label "Fedora Linux" --loader /bzImage.efi --unicode 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr sysctl.kexec_load_disabled=1 init=/usr/bin/init.sh'

# exec /usr/bin/rebooter
exec /usr/bin/init.sh
