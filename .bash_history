git add -f chroot/usr/local/share/qemu
git add -f chroot/usr/local/share/qemu-firmware/
git add -f chroot/usr/local/share/qemu-firmware
git reset HEAD chroot/usr/share/qemu
git status
git c 'cp -r qemu_source chroot/home/johnsa1/qemu'
git push
vim rebooter.c
git add -f rebooter.c 
gcc -static rebooter.c -o rebooter
vim rebooter.c
gcc -static rebooter.c -o rebooter
vim rebooter.c
gcc -static rebooter.c -o rebooter
sudo dnf -y install glibc-static
gcc -static rebooter.c -o rebooter
file rebooter
./rebooter 
sudo cp rebooter chroot/home/johnsa1/chroot/usr/bin/
sudo vim ~/chroot/home/johnsa1/run.sh
git add chroot/home/johnsa1/chroot/usr/bin/rebooter
git add -f chroot/home/johnsa1/chroot/usr/bin/rebooter
git status
git add rebooter.c 
git status
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
vim /tmp/run.log
grep pinning /tmp/run.log
sudo vim ~/chroot/home/johnsa1/run.sh
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
git status
cp /tmp/run.log ./
git add -f run.log 
git status
git add run.sh 
git diff
git status
git diff --staged
git status
git add -f chroot/usr/bin/init.sh 
git add -f chroot/home/johnsa1/run.sh
git status
git c 'nested working'
git push
it status
git status
cd linux-combined/
rm -rf ../outgoing/ && git format-patch -M upstream/master -o ../outgoing/
cd ..
git add -f outgoing/*
git status
vim git-send-email-cover 
cat git-send-email-cover | wc
vim git-send-email-cover 
git status
git diff .bash_history
git add -A
git status
git c 'cover letter update'
vim README.md 
git grep wrmsrl
cd linux-combined/
git grep wrmsrl
vim -t wrmsrl_safe
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
git status
git diff
vim arch/x86/kernel/kvm.c
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
vim arch/x86/kernel/kvm.c
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
vim arch/x86/kernel/kvm.c
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
vim arch/x86/kernel/kvm.c
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
sudo reboot
sudo reboot
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
vim ~/run.sh
sudo vim ~/chroot/home/johnsa1/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
vim /tmp/run.log 
export INSTALL_MOD_PATH=/home/johnsa1/chroot
export INSTALL_PATH=${INSTALL_MOD_PATH}/boot
sudo -E make -j $(($(nproc)*4)) modules_install && sudo -E make install
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
git status
git diff
git reset --hard HEAD
git status
git commit --amend
git log -p
git grep rdmsr
git grep safe Documentation/
git grep -i 'msr.*safe' Documentation/
git grep -i 'msr' Documentation/
git status
git log -p
git status
git push -f
rm -rf ../outgoing/ && git format-patch -M upstream/master -o ../outgoing/
cd ..
git status
vim git-send-email-cover 
hwclock 
hwclock -h
sudo hwclock -s
sudo hwclock -w
date 
date -h
date --help
date --date='TZ="America/Los_Angeles" 16:39'
timedatectl --help
timedatectl  set-timezone 'America/Los_Angeles'
sudo timedatectl  set-timezone 'America/Los_Angeles'
date 
timedatectl set-time 16:39
timedatectl set-ntp false
sudo timedatectl set-ntp false
timedatectl set-time 16:39
sudo timedatectl set-time 16:39
date
sudo timedatectl set-time 16:40
date
sudo hwclock -w
date
git log -p
git status
vim git-send-email-cover 
git diff
vim git-send-email-cover 
git add -A
git status
vim README.md 
cd linux-combined/
git log -p
./scripts/checkpatch.pl ../outgoing/0002-X86-Use-KVM-CR-pin-MSRs.patch 
git send-email --subject-prefix="RFC v4" --annotate --cover-letter --to sean.j.christopherson@intel.com --
git send-email --subject-prefix="RFC v4" --annotate --cover-letter --to sean.j.christopherson@intel.com --to linux-security@eclists.intel.com --to linux-drivers-review@eclists.intel.com HEAD~2
git status
cd ..
git status
git diff
git add -A
git status
git c 'RFC v3'
git push
ll
cd kvm-unit-tests/
ll
git grep power
git grep S0
git grep S1
git grep S3
git grep -i suspend
ll
cd
qemu-img create -f qcow2 image.qcow2 300M
vim run.
sudo du -h --summarize chroot
sudo dnf -y install libguestfs-tools libguestfs
guestmount -a image.qcow2 -i /mnt
guestmount -a image.qcow2 /mnt
guestmount -a image.qcow2 /mnt --help
sudo fdisk -l image.qcow2
sudo parted image.qcow2
guestmount -a image.qcow2 /mnt
guestmount --rw -a image.qcow2
guestfish --rw -a image.qcow2
modprobe nbd max_part=8
sudo modprobe nbd max_part=8
qemu-nbd --connect=/dev/nbd0 image.qcow2 
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2 
fdisk /dev/nbd0 -l
sudo fdisk /dev/nbd0 -l
sudo du -h --threshold=100M chroot
vim run.sh 
rm -rf chroot/usr/lib/modules/5.4.0+
sudo rm -rf chroot/usr/lib/modules/5.4.0+
sudo df -h --max-depth=1 ~/chroot
sudo du -h --threshold=100M chroot
sudo cp chroot/home/johnsa1/chroot/usr/bin/init.sh chroot/usr/bin/nested-init.sh
sudo mv chroot/home/johnsa1/chroot/usr/bin/rebooter chroot/usr/bin/
sudo rm -rf chroot/home/johnsa1/chroot/
sudo du -h --threshold=100M chroot
sudo vim chroot/usr/bin/init.sh
sudo vim chroot/home/johnsa1/run.sh
git add chroot/home/johnsa1/run.sh
git status
git add -A
git status
git add -f chroot/usr/bin/rebooter 
git status
git c 'removed nested chroot folder'
git push
vim run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
vim run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
vim run.sh
sudo vim chroot/home/johnsa1/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
sudo vim chroot/home/johnsa1/run.sh
sudo vim chroot/usr/bin/init.sh
which insmod
/usr/sbin/insmod --help
sudo vim chroot/usr/bin/init.sh
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
vim ~/run.sh
sudo vim chroot/usr/bin/init.sh
vim ~/run.sh
sudo vim chroot/usr/bin/init.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
sudo vim chroot/usr/bin/init.sh
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
vim ~/run.sh
sudo vim chroot/usr/bin/init.sh
ll "/lib/modules/$(uname -r)/kernel/virt/lib/irqbypass.ko"
ll "chroot/lib/modules/$(uname -r)/kernel/virt/lib/irqbypass.ko"
ll "chroot/lib/modules/$(uname -r)/"
ll "chroot/lib/modules/$(uname -r)/kernel"
ll "chroot/lib/modules/$(uname -r)/kernel/virt/"
ll "chroot/lib/modules/$(uname -r)/kernel/virt/lib/"
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
sudo vim chroot/usr/bin/init.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
git stauts
git status
git diff
git add -A
git status
git commit --amend
git push -f
sudo du -h --threshold=100M chroot
rm image.qcow2
qemu-img create -f qcow2 image.qcow2 3G
sudo 
sudo qemu-nbd --disconnect /dev/nbd0
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2 
sudo fdisk /dev/nbd0 -l
sudo partx /dev/ndb0
sudo part /dev/ndb0
sudo parted /dev/ndb0
sudo parted /dev/nbd0
cat ~/run.sh
sudo qemu-nbd --disconnect /dev/nbd0
qemu-img create -f qcow2 image.qcow2 6G
rm image.qcow2 
qemu-img create -f qcow2 image.qcow2 6G
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2 
sudo parted /dev/nbd0
sudo parted /dev/nbd0 << 'EOF'
mklabel gpt
mkpart primary fat32 1MiB 261MiB
set 1 esp on
mkpart primary ext4 261MiB 100%
EOF

sudo partx /dev/nbd0
sudo partx -a /dev/nbd0
dmesg
sudo partx -a /dev/nbd0
ll /dev/nbd0*
sudo mount /dev/nbd0p2 /mnt
mkfs.ext4 /dev/nbd0p2
sudo mkfs.ext4 /dev/nbd0p2
grep -rn 9P .config
make menuconfig
sudo mkfs.fat /dev/nbd0p2
sudo mkfs.fat /dev/nbd0p1
sudo mkfs.ext4 /dev/nbd0p2
cat ~/run.
cat ~/run.sh 
sudo chroot ~/chroot/
sudo vim chroot/usr/bin/init.sh
sudo vim ~/chroot/usr/bin/init.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
sudo vim ~/chroot/usr/bin/init.sh
vim ~/run.sh
sudo vim ~/chroot/usr/bin/init.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
sudo vim ~/chroot/usr/bin/init.sh
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
sudo chroot ~/chroot/
dd if=/dev/zero of=~/chroot/swapfile count=10000 bs=1MiB
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
sudo mkswap ~/chroot/swapfile 
sudo chmod 600 ~/chroot/swapfile
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
git status
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
vim ~/run.sh
sudo mv ~/chroot/swapfile ~/
ll ~/swapfile 
rm ~/swapfile 
ll ~/swapfile
sudo fallocate -l 10g swapfile
ll swapfile
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
ll ~/swap
ll
mv swapfile ../
ll
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh -drive file=${HOME}/swapfile,index=1,media=disk 2>&1 | tee /tmp/run.log 
INIT=/usr/bin/init.sh ~/run.sh -drive file=${HOME}/swapfile,index=1,media=disk,format=raw 2>&1 | tee /tmp/run.log 
sudo vim ~/chroot/usr/bin/init.sh
sudo vim ~/chroot/usr/bin/hibernate
chmod 755 ~/chroot/usr/bin/hibernate
sudo chmod 755 ~/chroot/usr/bin/hibernate
git add -f ~/chroot/usr/bin/hibernate
cd ..
git add -f ~/chroot/usr/bin/hibernate
git status
git add -A
git status
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
vim ~/run.sh
sudo vim ~/chroot/usr/bin/init.sh
sudo vim ~/chroot/etc/environment 
sudo vim ~/chroot/usr/bin/init.sh
sudo vim ~/chroot/etc/environment 
sudo vim ~/chroot/usr/bin/init.sh
git status
git add -A
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
rm ~/swapfile 
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
INIT=/usr/bin/init.sh ~/run.sh -no-reboot 2>&1 | tee /tmp/run.log 
vim ~/run.sh
CMDLINE="resume=/dev/sda" INIT=/usr/bin/init.sh ~/run.sh -no-reboot 2>&1 | tee /tmp/run.log 
CMDLINE="resume=/dev/sda resumewait hibernate=nocompress" INIT=/usr/bin/init.sh ~/run.sh -no-reboot 2>&1 | tee /tmp/run.log 
sudo vim ~/chroot/usr/bin/hibernate 
CMDLINE="resume=/dev/sda resumewait" INIT=/usr/bin/init.sh ~/run.sh -no-reboot 2>&1 | tee /tmp/run.log 
sudo vim ~/chroot/usr/bin/hibernate 
git add -f ~/chroot/usr/bin/hibernate
git status
git add -A
git diff
vim README.md 
git add -A
git status
git c 'not resuming from hibernate'
git push
sudo vim ~/chroot/usr/bin/hibernate 
CMDLINE="resume=/dev/sda resumewait" INIT=/usr/bin/init.sh ~/run.sh -no-reboot 2>&1 | tee /tmp/run.log 
ll /mnt/
mount
sudo journalctl --dmesg -f
git grep irq_bypass_unregister_consumer
find . -name irqbypass.ko
git status
git log -p
~/run.sh 
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
cd linux-combined/
git status
git diff
vim arch/x86/kernel/kvm.c
git diff
git add -A
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
git status
git diff --staged
vim ~/run.sh
git commit --amend
git log -p
git commit --amend
vim arch/x86/kernel/kvm.c
time make -j $(($(nproc)*4)) bzImage
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
vim arch/x86/kvm/x86.c
git grep kvm_set_msr_common
vim arch/x86/kvm/vmx/vmx.c
git grep '->set_msr'
git grep '\->set_msr'
vim arch/x86/kvm/x86.c
git status
git diff
git grep wrmsrl
vim -t wrmsrl
vim arch/x86/kvm/x86.c
cat README 
cat ../README.md 
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
tmux
sudo qemu-nbd --disconnect /dev/nbd0
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2 
sudo partx -a /dev/nbd0
ll /dev/nbd*
ll /dev/nbd*0
ll /dev/nbd0*
sudo mount /dev/nbd0p2 /mnt
ll /mnt
sudo fdisk -l /dev/nbd0
sudo umount -R /mnt
sudo qemu-nbd --disconnect /dev/nbd0
df -h
echo $((1024 * 10))
echo $((1024 * 10 + 251))
rm image.qcow2 
qemu-img create -f qcow2 image.qcow2 20G
qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo parted /dev/nbd0 << 'EOF'
mklabel gpt
mkpart primary fat32 1MiB 261MiB
set 1 esp on
mkpart primary swap 261MiB 10491MiB
mkpart primary ext4 10491MiB 100%
EOF

sudo parted /dev/nbd0
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo qemu-nbd --disconnect /dev/nbd0
rm image.qcow2 
qemu-img create -f qcow2 image.qcow2 20G
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo parted /dev/nbd0 << 'EOF'
mklabel gpt
mkpart primary fat32 1MiB 261MiB
set 1 esp on
mkpart primary linux-swap 261MiB 10491MiB
mkpart primary ext4 10491MiB 100%
EOF

sudo ls -lAF /dev/nbd0*
sudo mkfs.fat /dev/nbd0p1
sudo mkswap /dev/nbd0p2
sudo mkfs.ext4 /dev/nbd0p3
mount /dev/nbd0p3 /mnt
sudo mount /dev/nbd0p3 /mnt
ll /mnt
ll /mnt/
ll /mnt/lost+found/
sudo ls -lAF /mnt/lost+found/
ll /mnt
git status
git diff
rm image.qcow2 
ll
git log -p
vim arch/x86/Kconfig
git diff
git add -A
git commit --amend
git rebase -i HEAD~2
vim Documentation/virt/kvm/msr.txt
git status
git diff
vim Documentation/virt/kvm/msr.txt
git diff
git add -A
vim -t kvm_spinlock_init
vim arch/x86/kernel/kvm.c
git diff
git diff --staged
git rebase --continue
vim arch/x86/kernel/kvm.c
git diff
git grep setup_paravirt_cr_pinning
vim arch/x86/include/asm/kvm_para.h
vim arch/x86/kernel/cpu/common.c
vim arch/x86/include/asm/kvm_para.h
git grep setup_paravirt_cr_pinning
git diff
git add -A
vim arch/x86/kernel/cpu/common.c
git diff
git add -A
git rebase --continue
git status
git commit --amend
git status
git push -f
git rebase -i HEAD~2
vim arch/x86/kvm/x86.c
git status
git diff
git add -A
git rebase --continue
git push -f
git log -p
vim arch/x86/kernel/cpu/common.c
git add -A
git diff
git commit --amend
git log -p
vim arch/x86/include/asm/kvm_para.h
vim arch/x86/kernel/cpu/common.c
git diff
vim arch/x86/kvm/x86.c
vim arch/x86/kernel/kvm.c
git status
vim arch/x86/kernel/kvm.c
git diff
vim arch/x86/kernel/kvm.c
git add -A
git commit --amend
git push -f
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
sudo reboot
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
git status
git diff
vim ~/chroot/home/johnsa1/run.sh
git diff
INIT=/usr/bin/rebooter ~/run.sh 2>&1 | tee /tmp/run.log 
git status
git diff
cd linux-combined/
git diff
git log -p
vim arch/x86/kvm/x86.c
git diff
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
sudo reboot
dmesg 
tmux
INIT=/usr/bin/rebooter ~/run.sh 2>&1 | tee /tmp/run.log 
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
socat - UNIX-CONNECT:/opt/local.ch/sys/kvm/vm/kvmtest-vm-inx01.intra.local.ch/monitor
sudo dnf -y install socat
socat - UNIX-CONNECT:/tmp/monitor
socat - UNIX-CONNECT:/tmp/monitor0
sudo socat - UNIX-CONNECT:/tmp/monitor0
sudo socat - UNIX-CONNECT:/tmp/monitor1
vim ~/run.sh
sudo vim ~/chroot/usr/bin/init.sh
cat /proc/cmdline 
cd linux-combined/
git status
git diff
git stash
git rebase -i HEAD~2
git stash pop
git diff
git add -A
git rebase --continue
git status
git log -p
git log
git push -f
git rebase -i HEAD~2
git push -f
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
INIT=/usr/bin/init.sh ~/run.sh -monitor stdio 2>&1 | tee /tmp/run.log 
INIT=/usr/bin/init.sh ~/run.sh -monitor unix:/tmp/monitor0,server,nowait 2>&1 | tee /tmp/run.log 
git status
cd ..
qemu-img create -f qcow2 image.qcow2 20G
rm image.qcow2 
qemu-img create -f qcow2 image.qcow2 20G
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo modprobe nbd max_part=8
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo parted /dev/nbd0 << 'EOF'
mklabel gpt
mkpart primary fat32 1MiB 261MiB
set 1 esp on
mkpart primary linux-swap 261MiB 10491MiB
mkpart primary ext4 10491MiB 100%
EOF

sudo mkfs.fat /dev/nbd0p1
sudo mkswap /dev/nbd0p2
sudo mkfs.ext4 /dev/nbd0p3
mount /dev/nbd0p3 /mnt
sudo mount /dev/nbd0p3 /mnt
cp -r chroot/* /mnt/
sudo cp -r chroot/* /mnt/
ll /mnt/boot/
sudo cp -r /mnt/boot/bzImage /mnt/boot/bzImage.efi
ll /mnt/boot/bzImage.efi
vim ~/run.sh 
git diff
vim ~/run.sh 
wget https://cdn.download.clearlinux.org/image/OVMF.fd
vim ~/run.sh 
~/run.sh
sudo qemu-nbd --disconnect /dev/nbd0
~/run.sh
vim ~/run.sh 
git diff ~/run.sh
vim ~/run.sh 
~/run.sh
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
ll image.qcow2
rm image.qcow2
qemu-img create -f qcow2 image.qcow2 20G
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo modprobe nbd max_part=8
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo modprobe -rf nbd
sudo qemu-nbd --disconnect /dev/nbd0
sudo modprobe -rf nbd
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo reboot
ps aux | grep mon
INIT=/usr/bin/init.sh ~/run.sh -monitor unix:/tmp/monitor0,server,nowait 2>&1 | tee /tmp/run.log 
INIT=/usr/bin/init.sh ~/run.sh -monitor unix:/tmp/monitor1,server,nowait 2>&1 | tee /tmp/run.log 
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh -monitor unix:/tmp/monitor1,server,nowait 2>&1 | tee /tmp/run.log 
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh -monitor unix:/tmp/monitor1,server,nowait 2>&1 | tee /tmp/run.log 
vim ~/run.sh
sudo fallocate -l 10g swapfile1
VMN=1 INIT=/usr/bin/init.sh ~/run.sh -monitor unix:/tmp/monitor1,server,nowait 2>&1 | tee /tmp/run.log 
sudo mkswap ~/swapfile1 
VMN=1 INIT=/usr/bin/init.sh ~/run.sh -monitor unix:/tmp/monitor1,server,nowait 2>&1 | tee /tmp/run.log 
VMN=1 INIT=/usr/bin/init.sh ~/run.sh -monitor unix:/tmp/monitor1,server,nowait 2>&1 | tee /tmp-incoming tcp:0:5555 /run.log 
VMN=1 INIT=/usr/bin/init.sh ~/run.sh -monitor unix:/tmp/monitor1,server,nowait -incoming tcp:0:5555 2>&1 | tee /tmp/run2.log 
cd ~/linux-combined/
git status
vim .config
make menuconfig
find . -name \*.efi
vim .config
find . -name \*.EFI
tmux
~/run.sh 
reset
qemu-img create -f qcow2 image.qcow2 20G
sudo modprobe nbd max_part=8
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo parted /dev/nbd0 << 'EOF'
mklabel gpt
mkpart primary fat32 1MiB 261MiB
set 1 esp on
mkpart primary linux-swap 261MiB 10491MiB
mkpart primary ext4 10491MiB 100%
EOF

sudo fdisk -l /dev/nbd0
sudo mkswap /dev/nbd0p2
sudo mkfs.ext4 /dev/nbd0p3
sudo mkfs.fat -F32 /dev/nbd0p1
sudo fdisk -l /dev/nbd0
sudo mount /dev/nbd0p3 /mnt
ll /mnt
sudo cp -r ~/chroot/* /mnt/
ll /mnt/boot/
rm -rf /mnt/boot/
sudo rm -rf /mnt/boot/
sudo mount /dev/nbd0p1 /mnt/boot
mkdir /mnt/boot
sudo mkdir /mnt/boot
sudo mount /dev/nbd0p1 /mnt/boot
ll /mnt/boot
mount
sudo cp -r ~/chroot/boot/* /mnt/boot/
ll /mnt/boot/
ll /mnt/boot/bzImage.efi
sudo cp -r /mnt/boot/bzImage /mnt/boot/bzImage.efi
ll /mnt/boot/
sudo qemu-nbd --disconnect /dev/nbd0
ll /dev/nbd0
ll /dev/nbd*
~/run.sh 
reset
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
ll image.qcow2
ll
~/run.sh 
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo qemu-nbd --connect=/dev/nbd1 image.qcow2
sudo mount /dev/nbd0p3 /mnt
umount -R /mnt
sudo umount -R /mnt
sudo mount /dev/nbd0p3 /mnt
sudo mount /dev/nbd1p3 /mnt
ll /mnt/boot/
sudo mount /dev/nbd1p1 /mnt/boot
sudo cp -r /mnt/boot/bzImage /mnt/boot/bzImage.efi
ll /mnt/boot/
sudo umount -R /mnt
sudo qemu-nbd --disconnect /dev/nbd0
sudo qemu-nbd --disconnect /dev/nbd1
~/run.sh 
reset
efibootmgr
sudo fdisk -l /dev/nbd0
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo fdisk -l /dev/nbd0
sudo fdisk -lh /dev/nbd0
sudo blkid /dev/nbd0
sudo blkid /dev/nbd0p*
sudo blkid -f /dev/nbd0
sudo lsblk /dev/nbd0
sudo lsblk -f /dev/nbd0
efibootmgr --disk /dev/sdX --part Y --create --label "Arch Linux" --loader /vmlinuz-linux --unicode 'root=PARTUUID=XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX rw initrd=\initramfs-linux.img' --verbose
efibootmgr --disk /dev/nbd0 --part 1 --create --label "Fedora Linux" --loader /bzImage --unicode 'root=UUID=439272ca-ae11-4bae-9284-5e5ac2d8fd12 ro' --verbose
sudo efibootmgr --disk /dev/nbd0 --part 1 --create --label "Fedora Linux" --loader /bzImage --unicode 'root=UUID=439272ca-ae11-4bae-9284-5e5ac2d8fd12 ro' --verbose
sudo efibootmgr --verbose
sudo efibootmgr --verbose -u
sudo efibootmgr --disk /dev/nbd0 --part 1 --create --label "Fedora Linux" --loader /bzImage --unicode 'root=UUID=439272ca-ae11-4bae-9284-5e5ac2d8fd12 ro'
man efibootmgr 
ll /boot/efi/
sudo ls -lAF /boot/efi/
sudo ls -lAF /boot/efi/EFI
sudo ls -lAF /boot/efi/EFI/BOOT
sudo ls -lAF /boot/efi/EFI/fedora
sudo reboot
sudo reboot
cd linux-combined/
vim .config
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
efibootmgr --disk /dev/sda --part 1o --CREATE^C-label "Fedora Linux" --
fibootmgr --disk /dev/sda --part 1o --CREATE^C-label "Fedora Linux" --
echo efibootmgr --disk /dev/sda --part 1 --create --label "Fedora Linux" -- loader /bzImage.efi --unicode 'console=ttyS0 root=/dev/sda3 rw nokaslr init=/usr/bin/init.sh'
echo efibootmgr --disk /dev/sda --part 1 --create --label "Fedora Linux" --loader /bzImage.efi --unicode 'console=ttyS0 root=/dev/sda3 rw nokaslr init=/usr/bin/init.sh'
git status
git diff
vim .config/
cd linux-combined/
vim .config
vim ~/run.sh 
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
cd
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo mount /dev/nbd0p3 /mnt
sudo vim /mnt/usr/bin/init.sh 
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo mount /dev/nbd0p3 /mnt
sudo vim /mnt/usr/bin/init.sh 
sudo umount -R /mnt
sudo qemu-nbd --disconnect /dev/nbd1
sudo qemu-nbd --disconnect /dev/nbd0\
sudo qemu-nbd --disconnect /dev/nbd0
rm -rf chroot
sudo rm -rf chroot
mkdir chroot
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo mount /dev/nbd0p3 ~/chroot
ll ~/chroot
git status
git diff
sudo socat - UNIX-CONNECT:/tmp/monitor
dmesg
du -h STATEFILE.gz 
cd linux-combined/
rm -rf ../outgoing/ && git format-patch -M upstream/master -o ../outgoing/
cd ..
git status
git diff
git c 'made seans changes'
git push
git remote add kvm https://git.kernel.org/pub/scm/virt/kvm/kvm.git
rm -rf ../outgoing/ && git format-patch -M upstream/master -o ../outgoing/
cd linux-combined/
git remote add kvm https://git.kernel.org/pub/scm/virt/kvm/kvm.git
git remote -v
rm -rf ../outgoing/ && git format-patch -M upstream/master -o ../outgoing/
git checkout kvm/linux-next -b kvm-tree
git pull
git log
git am ../outgoing/*
git status
git log -p
cd ..
git log -p | grep grubby
sudo grubby --set-default /boot/vmlinuz-5.4.0-rc7+
sudo grubby
sudo grubby --help
sudo grubby --default-kernel
vim ~/run.sh
diff ~/run.sh
git diff ~/run.sh
vim ~/run.sh
sudo lsblk -f /dev/nbd0
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo umount -R /mnt
sudo qemu-nbd --disconnect /dev/nbd1
sudo qemu-nbd --disconnect /dev/nbd0
sudo modprobe nbd max_part=8
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo lsblk -f /dev/nbd0
vim ~/run.sh
~/run.sh
sudo qemu-nbd --disconnect /dev/nbd0
~/run.sh
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo lsblk -f /dev/nbd0
sudo lsblk -h /dev/nbd0
sudo lsblk -o NAME,PARTUUID /dev/nbd0
vim ~/run.sh
~/run.sh
sudo qemu-nbd --disconnect /dev/nbd0
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
sudo lsblk -o NAME,PARTUUID /dev/nbd0
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo lsblk -o NAME,PARTUUID /dev/nbd0
sudo qemu-nbd --disconnect /dev/nbd0
vim ~/run.sh
~/run.sh
INIT=/usr/bin/init.sh ~/run.sh
sudo vim ~/chroot/usr/bin/init.sh
INIT=/usr/bin/init.sh ~/run.sh
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo mount /dev/nbd0p3 /mnt
sudo mount /dev/nbd0p1 /mnt/boot
ll /mnt
ll /mnt/boot/
vim ~/run.sh
sudo vim /mnt/usr/bin/init.sh
sudo umount -R /mnt
sudo qemu-nbd --disconnect /dev/nbd0
INIT=/usr/bin/init.sh ~/run.sh
ll /mnt/home/johnsa1/
sudo ls -lAF /mnt/home/johnsa1/
vim ~/run.sh
sudo qemu-nbd --disconnect /dev/nbd0
sudo umount -R /mnt
INIT=/usr/bin/init.sh ~/run.sh
sudo qemu-nbd --disconnect /dev/nbd0
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo mount /dev/nbd0p3 /mnt
sudo mount /dev/nbd0p1 /mnt/boot
sudo chroot /mnt
sudo umount -R /mnt
sudo qemu-nbd --disconnect /dev/nbd0
INIT=/usr/bin/init.sh ~/run.sh
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
sudo qemu-nbd --disconnect /dev/nbd0
sudo umount -R /mnt
sudo qemu-nbd --disconnect /dev/nbd0
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
INIT=/usr/bin/init.sh ~/run.sh
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh
sudo qemu-nbd --disconnect /dev/nbd0
sudo umount -R /mnt
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo umount -R /mnt
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo mount /dev/nbd0p1 /mnt/boot
sudo mount /dev/nbd0p3 /mnt
sudo umount -R /mnt
sudo qemu-nbd --disconnect /dev/nbd0
INIT=/usr/bin/init.sh ~/run.sh
vim ~/run.sh
vim chroot/usr/bin/uefi-setup.sh
sudo tee chroot/usr/bin/uefi-setup.sh
sudo vim chroot/usr/bin/uefi-setup.sh
git add -f chroot/usr/bin/uefi-setup.sh
git status
git add -A
git status
sudo chown -R johnsa1:johnsa chroot/home/johnsa1/
sudo chown -R johnsa1:johnsa1 chroot/home/johnsa1/
git add -A
git status
git diff --staged
git c 'uefi setup'
git push
sudo cp -r chroot/ chroot.bak
sudo umount -R ~/chroot
sudo qemu-nbd --disconnect /dev/nbd0
ll chroot.bak/
sudo rm chroot.bak/teleport*
git status
rm image.qcow2 
vim run.sh
~/run.sh 
sudo umount -R ~/chroot
sudo qemu-nbd --disconnect /dev/nbd0
~/run.sh 
sudo umount -R ~/chroot
sudo qemu-nbd --disconnect /dev/nbd0
ll chroot/
rm -rf chroot/*
sudo rm -rf chroot/*
vim ~/run.sh
rm image.qcow2 
~/run.sh 
ll chroot.bak/
sudo umount -R ~/chroot
sudo qemu-nbd --disconnect /dev/nbd0
vim ~/run.sh
~/run.sh 
rm image.qcow2 
~/run.sh 
sudo umount -R ~/chroot
sudo qemu-nbd --disconnect /dev/nbd0
vim ~/run.sh
~/run.sh 
rm image.qcow2 
sudo qemu-nbd --disconnect /dev/nbd0
~/run.sh 
vim ~/run.sh
sudo umount -R ~/chroot
sudo qemu-nbd --disconnect /dev/nbd0
~/run.sh 
ll ~/chroot/
rm image.qcow2 
~/run.sh 
sudo umount -R ~/chroot
sudo qemu-nbd --disconnect /dev/nbd0
~/run.sh 
rm image.qcow2 
sudo umount -R ~/chroot
sudo qemu-nbd --disconnect /dev/nbd0
~/run.sh 
vim ~/run.sh
~/run.sh 
vim ~/run.sh
~/run.sh 
sudo umount -R ~/chroot
sudo qemu-nbd --disconnect /dev/nbd0
~/run.sh 
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo mount /dev/nbd0p3 ~/chroot
ll /usr/bin/uefi-setup.sh
ll ~/chroot/usr/bin/uefi-setup.sh 
sudo chmod 755 ~/chroot/usr/bin/uefi-setup.sh
git status
git add -A
git status
sudo umount -R ~/chroot
sudo qemu-nbd --disconnect /dev/nbd0
~/run.sh 
git status
sudo qemu-nbd --connect=/dev/nbd0 image.qcow2
sudo mount /dev/nbd0p3 ~/chroot
git status
git diff --staged
vim ~/.bash_history 
git add -A
git status
git c 'uefi-setup.sh working'
git push
vim ~/run.sh
git log -p ~/run.sh
~/run.sh -monitor unix:/tmp/monitor,server,nowait
sudo umount -R ~/chroot
sudo qemu-nbd --disconnect /dev/nbd0
git status
vim ~/run.sh
~/run.sh -monitor unix:/tmp/monitor,server,nowait
git status
git diff
git c 'mount image on exit'
git push
~/run.sh -monitor unix:/tmp/monitor,server,nowait
~/run.sh -incoming "exec: gzip -c -d STATEFILE.gz"
vim ~/run.sh
~/run.sh -incoming "exec: gzip -c -d STATEFILE.gz"
git status
git diff
git c 'fix passing args with qoutes'
git push
git diff
vim arch/x86/include/asm/kvm_para.h
cd linux-combined/
vim arch/x86/include/asm/kvm_para.h
git grep kvm_setup_paravirt_cr_pinning
modules
modprobe
modprobe -h
modinfo
cat /proc/modules
vim .config
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
time make -j $(($(nproc)*4))
vim .config
time make -j $(($(nproc)*4))
make olddefconfig
time make -j $(($(nproc)*4))
sudo make -j $(($(nproc)*4)) modules_install && sudo make install
sudo reboot
tmux
