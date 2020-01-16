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
ulimit -u unlimited
/usr/sbin/swapon /dev/sda2

/usr/sbin/efibootmgr --disk /dev/sda --part 1 --create --label "Fedora Linux" --loader /bzImage.efi --unicode 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr pv_cr_pin init=/usr/bin/init.sh'

exec /usr/bin/rebooter
