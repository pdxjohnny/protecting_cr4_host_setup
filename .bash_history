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
tmux
vim linux-combined/.config
vim ~/git-send-email-cover 
git log
git status
git diff
git checkout -- linux-combined/.config
git status
git diff
git c 'update wording for guest adding more pinned bits'
git push
cd linux-combined/
git log -p
vim arch/x86/kernel/kvm.c
git log -p
git status
git diff
git commit --amend
time make -j $(($(nproc)*4))
git rebase -i HEAD~2
git status
git diff
git add -A
git commit --amend
git rebase -i HEAD~2
rm -rf ../outgoing/ && git format-patch -M kvm/linux-next -o ../outgoing/
cd ..
git status
git diff
git add -A
git c 'external RFC'
cd linux-combined/
git send-email --subject-prefix="RFC" --annotate --cover-letter --to sean.j.christopherson@intel.com --to linux-security@eclists.intel.com --to linux-drivers-review@eclists.intel.com HEAD~2
git send-email --subject-prefix="RFC" --annotate --cover-letter --to kvm@vger.kernel.org HEAD~2
git rebase -i HEAD~2
vim Documentation/virt/kvm/msr.txt
git diff
git add -A
git rebase --continue
git send-email --subject-prefix="RFC" --annotate --cover-letter --to kvm@vger.kernel.org HEAD~2
vim ~/README.md 
cat ~/README.md
git log -p
rm -rf ../outgoing/ && git format-patch -M kvm/linux-next -o ../outgoing/
./scripts/checkpatch.pl ../outgoing/0001-KVM-X86-Add-CR-pin-MSRs.patch 
git commit --amend
git rebase -i HEAD~2
git log -p
rm -rf ../outgoing/ && git format-patch -M kvm/linux-next -o ../outgoing/
./scripts/checkpatch.pl ../outgoing/0001-KVM-X86-Add-CR-pin-MSRs.patch 
./scripts/checkpatch.pl ../outgoing/0002
./scripts/checkpatch.pl ../outgoing/0002-X86-Use-KVM-CR-pin-MSRs.patch 
git status
git branch -D hc_harden
git checkout -b hc_harden
git push -u pdxjohnny -f
git remote -v
git push -u origin -f
git push -u origin hc_harden -f
git send-email --subject-prefix="RESEND RFC" --annotate --cover-letter --to tglx@linutronix.de --to mingo@redhat.com --to bp@alien8.de --to x86@kernel.org --to pbonzini@redhat.com --cc hpa@zytor.com --cc sean.j.christopherson@intel.com --cc vkuznets@redhat.com --cc wanpengli@tencent.com --cc jmattson@google.com --cc joro@8bytes.org --cc linux-kernel@vger.kernel.org --cc kvm@vger.kernel.org HEAD~2
   
tmux attach
cd qemu
vim docs/cpu-hotplug.rst’
vim docs/cpu-hotplug.rst
tmpd
cd linux-combined/
git grep kexdc_reinit
git grep kexec_reinit
vim arch/arm/include/asm/kexec.h
git grep kexec_boot_atags
vim arch/arm/kernel/relocate_kernel.S
git grep relocate_kernel
git grep relocate_kernel arch/x86
vim arch/x86/kernel/relocate_kernel_64.S
sudo journalctl --dmesg -f
~/run.sh 
vim ~/run.sh
~/run.sh 
tmux
tmux attach
git status
git diff
cd linux-combined/
git status
git diff
vim +440 arch/x86//kernel/cpu/common.c
cd linux-combined/
vim +440 arch/x86//kernel/cpu/common.c
sudo socat - UNIX-CONNECT:/tmp/monitor
find ~/qemu/build/ -name qmp-shell
find ~/qemu/ -name qmp-shell
~/qemu/scripts/qmp/qmp-shell -p -v /tmp/monitor 
~/qemu/scripts/qmp/qmp-shell -p -v /tmp/q
sudo ~/qemu/scripts/qmp/qmp-shell -p -v /tmp/q
git grep enter_smm
vim -t enter_smm
git grep vmx_pre_leave_smm
vim -t vmx_pre_leave_smm
vim -t enter_smm
vim -t vmx_enable_smi_window
git grep enable_smi_window
vim arch/x86/kvm/vmx/vmx.c
vim -t vmx_enable_smi_window
vim -t enter_smm
git grep -E 'trace.*smm'
vim -t enter_smm
git grep HF_SMM_MASK
vim arch/x86/kvm/x86.c
git grep KVM_VCPUEVENT_VALID_SMM
vim arch/x86/kvm/x86.c
git grep -C 4 HF_SMM_MASK
git grep -C 4 post_leave_smm
vim arch/x86/kvm/emulate.c
readelf vmlinux
readelf -S vmlinux
readelf -S arch/x86/boot/bzImage 
xxd arch/x86/boot/bzImage | less
vim -t machine_kexec
vim arch/x86/kernel/machine_kexec_64.c
git grep 'Image loading done'
vim kernel/power/swap.c
git grep swsusp_read
vim kernel/power/hibernate.c
git grep swsusp_read
vim kernel/power/hibernate.c
git grep 'Disabling non-boot CPUs'
vim kernel/cpu.c
git grep freeze_secondary_cpus
vim arch/x86/mm/mmio-mod.c
vim kernel/power/hibernate.c
time make -j $(($(nproc)*4)) bzImage
vim -t machine_kexec
ll
git grep kexec
vim kernel/kexec.c
vim -t kimage
vim kernel/kexec_elf.c
vim kernel/kexec_file.c
vim kernel/kexec_core.c
git grep do_kimage_alloc_init
vim kernel/kexec.c
git branch
git log -p nokexec
vim kernel/kexec.c
git grep SMAP
git grep _SMAP
vim arch/x86/kernel/cpu/common.c
cd ..
git status
git diff
git c 'run.sh: Add modprobe for irqbypass'
git push
cd linux-combined/
git status
git diff
git status
git diff
vim arch/x86/boot/compressed/head_64.S
vim arch/x86/kernel/head_64.S
git diff
vim arch/x86/boot/compressed/head_64.S
git diff
vim arch/x86/boot/compressed/head_64.S
git diff
vim arch/x86/boot/compressed/head_64.S
git diff
vim arch/x86/boot/compressed/head_64.S
vim arch/x86/kernel/head_64.S
vim arch/x86/kernel/relocate_kernel_64.S
git diff
vim arch/x86/kernel/relocate_kernel_64.S
vim arch/x86/kernel/head_64.S
vim -t kvm_set_cr4
git grep startup_64
cd linux-combined/
git grep startup_64
git checkout -b make_kexec_work
git add -A
gits tatus
git staus
git status
git c 'working on making kexec work'
git push -u pdxjohnny
git push -u origin
    git push --set-upstream origin make_kexec_work
git status
git branch
git checkout hc_harden
git status
git log -p
git status
git checkout -b cr_pin_msr_cmdline
git status
git grep resume
git grep noresume
vim Documentation/admin-guide/kernel-parameters.txt
git grep nokalsr
git grep nokaslr
vim drivers/firmware/efi/libstub/efi-stub-helper.c
vim arch/x86/boot/compressed/kaslr.c
git branch -r
git log -p origin/make_kexec_work
git checkout make_kexec_work
git grep secondary_startup_64
vim arch/x86/realmode/init.c
git grep secondary_startup_64
vim arch/x86/realmode/init.c
git grep mmu_cr4_features
vim arch/x86/power/hibernate_asm_64.S
git status
git log -p
vim arch/x86/power/hibernate_asm_64.S
git grep restore_image
vim arch/x86/power/hibernate_64.c
git reflog
git status
git log -p
git status
git grep restore_image
vim arch/x86/power/hibernate_64.c
vim kernel/power/hibernate.c
vim arch/x86/boot/compressed/head_64.S
git diff
git diff HEAD~1
vim arch/x86/kernel/relocate_kernel_64.S
git grep post susp
git grep 'post susp'
vim kernel/power/hibernate.c
git grep swsusp_arch_resume
vim arch/x86/power/hibernate_64.c
vim kernel/power/hibernate.c
vim arch/x86/power/hibernate_64.c
git grep restore_image
vim arch/x86/power/hibernate_asm_64.S
git grep relocated_restore_code
vim arch/x86/power/hibernate.c
vim arch/x86/power/hibernate_asm_64.S
vim arch/x86/power/hibernate.c
git grep restore_image
vim arch/x86/power/hibernate_64.c
vim arch/x86/power/hibernate.c
vim arch/x86/power/hibernate_64.c
git grep mmu_cr4_features
vim arch/x86/kernel/setup.c
vim arch/x86/kvm/kvm.c
vim arch/x86/kvm/x86.c
git grep setup_kvm_par
git grep paravirt_kvm
git grep cr_pinning
vim arch/x86/kernel/kvm.c
vim arch/x86/power/hibernate_asm_64.S
git grep mmu_cr4_features
vim arch/x86/power/hibernate.c
vim arch/x86/kernel/setup.c
git grep mmu_cr4_features
vim -t setup_cr4_pinning
vim -t setup_cr_pinning
dmesg 
vim -t setup_cr_pinning
vim arch/x86/kernel/kvm.c
vim arch/x86/kernel/setup.c
vim arch/x86/power/hibernate_64.c
vim arch/x86/power/hibernate.c
vim kernel/power/hibernate.c
