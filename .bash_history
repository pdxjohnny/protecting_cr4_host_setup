rm /tmp/objdump
objdump -D vmlinux | grep -C 700 0xffffffff8106378d | tee /tmp/objdump
objdump -D vmlinux | grep -C 700 fff8106378d: | tee /tmp/objdump
vim /tmp/objdump
cat /tmp/objdump >> ~/README.md 
vim ~/README.md
git status
cd ..
git status
git add -A
git c 'README: lidt'
git push
tmux attach
tmux attach
tmux
tmux attach
vim
cat vim
cat /tmp/f 
ps aux | grep qemu
sudo dnf debuginfo-install zlib-1.2.11-18.fc30.x86_64
cd linux-combined/
gdb vmlinux 
cd ../qemu/
git grep lidt
vim tests/tcg/i386/system/boot.S
ll tests/tc
ll tests/tcg/
vim tests/tcg/README
gdb vmlinux 
git grep lidt
vim disas/i386.c
vim target/i386/hvf/x86_decode.c
vim target/i386/translate.c
git grep cr4
vim target/i386/kvm.c
cd ..
cd linux-combined/
objdump -D vmlinux | less
find . -name kvm.ko
objdump -D ./arch/x86/kvm/kvm.ko | less
gdb vmlinux 
man tmux
sudo journalctl --dmesg | tail -n 50
cat /etc/dnf/dnf.conf 
objdump -D linux-combined/vmlinux | grep -v cr4
objdump -D linux-combined/vmlinux | grep \%cr4
objdump -D linux-combined/vmlinux | grep -C 40 \%cr4
objdump -D linux-combined/vmlinux | grep -C 40 \%cr4 | less
objdump -D linux-combined/vmlinux | grep --color -C 40 \%cr4 | less -r
~/run.sh -s -S
~/run.sh
dmesg -T
vim -t kvm_vcpu_ioctl
cd linux-combined/
vim -t kvm_vcpu_ioctl
vim -t vfs_writev
vim -t handle_cr
vim ~/run.sh 
~/run.sh
im ~/run.sh 
vim ~/run.sh
dmesg -T
~/run.sh -s -S
dmesg -T | tail -n 50
git status
git diff
~/run.sh -s -S
vim -t kvm_vcpu_ioctl
vim -t kvm_arch_vcpu_ioctl_run
python3
vim -t handle_mm_fault
git grep handle_mm_fault
vim mm/memory.c
vim -t ksys_ioctl
ll
~/run.sh -s -S
~/run.sh
modprobe -rf
modprobe -rf kvm
modprobe -rf kvm-intel
sudo modprobe -rf kvm-intel
&& sudo modprobe -rf kvm-intel
sudo modprobe -rf kvm-intel && sudo modprobe -rf kvm
vim
tmux attach
cat ~/.ssh/authorized_keys 
ssh johnsa1-desk.jf.intel.com
vim ~/.ssh/authorized_keys 
vim ~/.ssh/known_hosts 
ssh johnsa1-desk.jf.intel.com
sudo vim /etc/resolv.conf 
sudo vim /etc/hosts 
ssh johnsa1-desk.jf.intel.com
sudo systemctl restart secure-tunnel@johnsa1-desk.service
sudo systemctl status secure-tunnel@johnsa1-desk.service
tmux attach
tmux attach
time make -j $(($(nproc)*4)) arch/x86/kvm/
time make -j $(($(nproc)*4)) arch/x86/kvm/kvm.ko
time make -j $(($(nproc)*4)) arch/x86/kvm/
time make -j $(($(nproc)*4)) -C arch/x86/kvm/
time make -j $(($(nproc)*4)) SUBDIRS=arch/x86/kvm/
time make -j $(($(nproc)*4)) SUBDIRS=arch/x86/kvm/ modules
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
time make -j $(($(nproc)*4)) M=arch/x86/kvm/
time make -j $(($(nproc)*4)) -C arch/x86/kvm/
cd linux-combined/
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
time make -j $(($(nproc)*4)) 
time make -j $(($(nproc)*4)) arch/x86/kvm/kvm.ko
time make -j $(($(nproc)*4)) arch/x86/kvm/kvm-intel.ko
time make -j $(($(nproc)*4)) arch/x86/kvm/
sudo insmod arch/x86/kvm/kvm.ko arch/x86/kvm/kvm-intel.ko
sudo insmod -vv arch/x86/kvm/kvm.ko 
sudo insmod -h arch/x86/kvm/kvm.ko 
sudo insmod arch/x86/kvm/kvm.ko 
(cd arch/x86/kvm && git clean -xfd)
time make -j $(($(nproc)*4)) arch/x86/kvm/
sudo insmod arch/x86/kvm/
time make -j $(($(nproc)*4)) arch/x86/kvm/kvm.ko
git status
git diff
git grep -C 40 | \%cr4
git grep -C 40 \%cr4
~/run.sh
modprobe kvm
sudo modprobe kvm
sudo modprobe kvm-intel
~/run.sh
dmesg -T | tail -n 50
git grep kvm_mips_callbacks
dmesg -T | tail -n 50
time make -j $(($(nproc)*4)) arch/x86/kvm/kvm.ko
time make -j $(($(nproc)*4)) bzImage
time make -j $(($(nproc)*4)) arch/x86/kvm/kvm.ko
time make -j $(($(nproc)*4))
ll /lib/modules/
find /lib/modules/ -name kvm.ko
find /lib/modules/ -name kvm-intel.ko
ll arch/x86/kvm/*.ko
cp arch/x86/kvm/*.ko /lib/modules/5.3.0+/kernel/arch/x86/kvm/
sudo cp arch/x86/kvm/*.ko /lib/modules/5.3.0+/kernel/arch/x86/kvm/
sudo modprobe -rf kvm-intel && sudo modprobe -rf kvm
sudo modprobe kvm && sudo modprobe kvm-intel
~/run.sh
sudo modprobe kvm && sudo modprobe kvm-intel
dmesg 
echo 'sudo modprobe kvm && sudo modprobe kvm-intel' >> ~/run.sh 
echo 'sudo modprobe -rf kvm-intel && sudo modprobe -rf kvm' >> ~/run.sh
echo 'sudo cp arch/x86/kvm/*.ko /lib/modules/5.3.0+/kernel/arch/x86/kvm/' >> ~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
time make -j $(($(nproc)*4)) bzImage
~/run.sh
vim ~/run.sh
~/run.sh
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
~/run.sh
git status
git diff
git c 'debuging set_cr4 on kexec'
git push
git status
git diff
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
time make -j $(($(nproc)*4)) bzImage
~/run.sh
git status
git diff
git c 'add modprobe to run'
git push
ll
cd linux-combined/
git status
git log
git log -p
git checkout -b kexec
git checkout protect_cr4
git reset --hard HEAD
git reset --hard 445caf60d401e431f7a39e4368a5acb5837a06f7
git log
git push -u origin kexec
git push -u origin -f 
git log -p
git grep HC_
vim Documentation/virt/kvm/hypercalls.txt
git status
git diff
git grep HC_
git grep KVM_HC_
vim include/uapi/linux/kvm_para.h
git grep KVM_HC_
vim include/uapi/linux/kvm_para.h
vim Documentation/virt/kvm/hypercalls.txt
vim include/uapi/linux/kvm_para.h
vim Documentation/virt/kvm/hypercalls.txt
git status
git add -A
git diff
git grep KVM_HC_
vim Documentation/virt/kvm/hypercalls.txt
vim include/uapi/
find . -name kvm_para.h
vim ./arch/x86/include/uapi/asm/kvm_para.h
git grep KVM_HC_
vim ./arch/x86/include/uapi/asm/kvm_para.h
git grep KVM_HC_FEATURES
vim Documentation/virt/kvm/hypercalls.txt
git grep KVM_HC_SCHED_YIELD
vim arch/x86/kvm/x86.c
git grep KVM_HC_SCHED_YIELD
vim arch/x86/kvm/x86.c
vim Documentation/virt/kvm/hypercalls.txt
vim arch/x86/kvm/x86.c
git grep -i pinning
vim arch/x86/kvm/x86.c
git diff v5.3
vim arch/x86/include/asm/kvm_host.h
git diff v5.3
vim arch/x86/kvm/cpuid.c
git diff v5.3
vim arch/x86/include/uapi/asm/kvm_para.h
git diff v5.3
git grep KVM_HC_SCHED_YIELD
git grep kvm_hypercall2
vim arch/x86/kernel/kvm.c
git diff v5.3
git grep KVM_EOPNOTSUPP
vim arch/x86/kernel/kvm.c
git status
git diff
git add -A
git status
git c 'hardening hypercall'
time make -j $(($(nproc)*4)) bzImage
vim arch/x86/kernel/kvm.c
vim arch/x86/kvm/x86c.
vim arch/x86/kvm/x86.c
cd qemu/
ll
gdb build/x86_64-softmmu/qemu-system-x86_64
vim .gdbinit 
vim scripts/qemu-gdb.py 
gdb build/x86_64-softmmu/qemu-system-x86_64
echo 'set auto-load safe-path /' >> ~/.gdbinit
vim ~/.gdbinit
gdb build/x86_64-softmmu/qemu-system-x86_64
sudo dnf debuginfo-install glib2-2.60.7-1.fc30.x86_64 glibc-2.29-22.fc30.x86_64 ncurses-libs-6.1-10.20180923.fc30.x86_64 pcre-8.43-2.fc30.x86_64 pixman-0.38.0-1.fc30.x86_64 zlib-1.2.11-18.fc30.x86_64
gdb build/x86_64-softmmu/qemu-system-x86_64
cd ../linux-combined/
gi status
git status
git diff
vim -t secondary_startup_64
grep -rn secondary_startup_64
git grep -rn secondary_startup_64
vim arch/x86/kernel/head_64.S
time make -j $(($(nproc)*4)) bzImage
ssh johnsa1-desk.jf.intel.com
vim ~/.ssh/known_hosts 
ssh johnsa1-desk.jf.intel.com
sudo systemctl restart secure-tunnel@johnsa1-desk.service
sudo systemctl status secure-tunnel@johnsa1-desk.service
git grep CR_PINNING
vim arch/x86/kvm/x86.c
vim arch/x86/boot/compressed/efi_thunk_64.S
vim arch/x86/boot/compressed/head_64.S 
vim arch/x86/kernel/relocate_kernel_64.S
vim arch/x86/mm/mem_encrypt_boot.S
vim arch/x86/platform/olpc/xo1-wakeup.S 
vim arch/x86/realmode/rm/trampoline_64.S-
vim arch/x86/realmode/rm/trampoline_64.S
vim arch/x86/realmode/rm/wakeup_asm.S
time make -j $(($(nproc)*4)) bzImage
vim arch/x86/boot/compressed/head_64.S 
time make -j $(($(nproc)*4)) bzImage
vim -t kvm_arch_vcpu_ioctl_run
git grep kvm_arch_vcpu_ioctl_run
vim arch/x86/kvm/x86.c
sudo journalctl --dmesg -f
vim arch/x86/kvm/x86.c
git grep handle_cr
vim arch/x86/kvm/vmx/vmx.c
sudo journalctl --dmesg -f
vim ~/run.sh 
sudo journalctl --dmesg -f
sudo reboot
tmux attach
tmux
vim ~/run.sh 
~/run.sh
~/run.sh -no-reboot 2>&1 | grep -i kvm
vim ~/run.sh 
find chroot -name poweroff
vim ~/run.sh 
~/run.sh -no-reboot 2>&1 | grep -i kvm
~/run.sh
vim ~/run.sh 
~/run.sh -no-reboot 2>&1 | grep -i kvm
~/run.sh -no-reboot 2>&1 | grep -i kvm | grep -i harden
~/run.sh 2>&1 | grep -i kvm | grep -i harden
~/run.sh 2>&1 | grep -i kvm
sudo journalctl --dmesg -f
git status
cd linux-combined/
git status
git diff
git add -A && git commit --amend
git status
git push -f
git log -p
git diff v5.3
vim arch/x86/kernel/kvm.c
time make -j $(($(nproc)*4)) bzImage
git add -A && git commit --amend
git push -f
vim ~/run.sh 
~/run.sh
git diff v5.3
git log -p
git diff v5.3
vim arch/x86/kernel/kvm.c
time make -j $(($(nproc)*4)) bzImage
~/run.sh
vim arch/x86/kernel/kvm.c
time make -j $(($(nproc)*4)) bzImage
git status
git diff
sudo reboot
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install && sudo systemctl stop secure-tunnel@johnsa1-desk.service && sudo kexec -l /boot/vmlinuz-5.3.0+ --append="$(cat /proc/cmdline)" --initrd=/boot/initramfs-5.3.0+.img && sudo kexec -e
cd linux-combined/
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install && sudo systemctl stop secure-tunnel@johnsa1-desk.service && sudo kexec -l /boot/vmlinuz-5.3.0+ --append="$(cat /proc/cmdline)" --initrd=/boot/initramfs-5.3.0+.img && sudo kexec -e
git grep HAVE_KVM_NO_POLL
git grep HAVE_KVM
git grep -i cr_pin
git grep -i cr0_pi
ip a
uname -a
~/run.sh
cd linux-combined/
git status
git diff
~/run.sh 2>&1 | grep -i kvm
git status
git diff
vim arch/x86/kernel/kvm.c
git diff
git add -A
git add -A && git commit --amend
git push -f
git status
tmux attach
tmux
tmux attach
tmux
tmux attach
zcat /proc/config
uname -a
~/run.sh 2>&1 | grep -i kvm
sudo journalctl --dmesg -f
sudo journalctl --dmesg
cd linux-combined/
git status
vim .config
~/run.sh 2>&1 | grep -i kvm
~/run.sh
git diff v5.3
vim init/do_mounts.c
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install && sudo systemctl stop secure-tunnel@johnsa1-desk.service && sudo kexec -l /boot/vmlinuz-5.3.0+ --append="$(cat /proc/cmdline)" --initrd=/boot/initramfs-5.3.0+.img && sudo kexec -e
sudo reboot
tmux
tmux attach
~/run.sh
cd linux-combined/
vim .config
git diff v5.3
vim arch/x86/kvm/x86.c
git grep KVM_HARDEN_CR_PINNING
vim arch/x86/include/asm/kvm_host.h
git grep KVM_HARDEN_CR_PINNING
git grep PARAVIRT_HARDEN
vun arch/x86/kernel/kvm.c
vim arch/x86/kernel/kvm.c
git diff v5.3
reset
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install && sudo systemctl stop secure-tunnel@johnsa1-desk.service && sudo kexec -l /boot/vmlinuz-5.3.0+ --append="$(cat /proc/cmdline)" --initrd=/boot/initramfs-5.3.0+.img && sudo kexec -e 
sudo reboot
tmux
sudo ss -tpan
watch -n 0.2 sudo ss -tpan
cd linux-combined/
git log
git commit --amend
git push -f
git status
git push -f
vim ~/.ssh/config 
git push -f
git status
git log
git push -f
git log -p
git push -f
git log -p
git push -f
git status
git reset --hard HEAD~4
git pull
git log
time make -j $(($(nproc)*4)) bzImage
make olddefconfig
time make -j $(($(nproc)*4)) bzImage
~/run.sh
~/run.sh 2>&1 | grep -i kvm
vim ~/chroot/usr/bin/init.sh
sudo vim ~/chroot/usr/bin/init.sh
vim ~/run.sh
vim ~/chroot/usr/bin/init.sh
sudo vim ~/chroot/usr/bin/init.sh
~/run.sh 
cd ..
find chroot -name poweroff
find chroot -name reboot
sudo vim ~/chroot/usr/bin/init.sh
~/run.sh 
sudo chroot chroot/
find chroot -name sytemd
find chroot -name systemd
ll chroot//usr/lib/systemd/systemd
sudo vim ~/chroot/usr/bin/init.sh
vim ~/run.sh
~/run.sh 
sudo cp /etc/systemd/system/secure-tunnel@.service chroot/etc/systemd/system/reboot.service
vim chroot/etc/systemd/system/reboot.service
sudo vim chroot/etc/systemd/system/reboot.service
sudo chroot chroot/
~/run.sh 
watch sudo ss -tpan
tmux attach
tmux attach
env - curl -vvvv http://ark.intel.com
env - curl -vvvv http://mark.intel.com
cd linux-combined/
ll
vim arch/x86/kernel/kvm.c
vim arch/x86/include/asm/kvm_host.h
git rebase -i HEAD~3
cd linux-combined/
git rebase -i HEAD~3
git status
git stash
git rebase -i HEAD~3
git stash pop
git diff
git rebase --abort
git status
git log
git rebase HEAD
git rebase HEAD~2
git rebase -i HEAD~2
git stash pop
git diff
git add -A
git rebase --continue
git status
git log -p
cd linux-combined/
git status
git diff
git add -A
git commit --amend
git status
git log
git log -p
git status
git rm --cached kernel/kheaders_data.tar.xz.tmp/
git rm -r --cached kernel/kheaders_data.tar.xz.tmp/
git status
git commit --amend
git statuts
git log -op
git status
cd linux-combined/
git log
git log -p 873d50d58f67ef15d2777b5e7f7a5268bb1fbae2
git commit --amend
git log -p 873d50d58f67ef15d2777b5e7f7a5268bb1fbae2
git commit --amend
git push -f
git grep kvm_vcpu_reset
vim arch/x86/kvm/lapic.c
git grep struct\ kvm_vcpu
git grep 'alloc.*struct kvm_vcpu'
vim arch/mips/kvm/mips.c
git grep kvm_arch_vcpu_create
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/vmx/vmx.c
vim arch/x86/include/asm/kvm_host.h
vim -t KVM_NOPNOTSUPP
vim -t KVM_ENOPNOTSUPP
vim -t KVM_EOPNOTSUPP
git grep guest_owned_bits
git grep set_guest_host_mask
git grep set_guest
git grep set_guest_host
git grep set_host_guest_mask
git grep set_host_guest
git grep host_guest_mask
git grep host_guest
git grep guest_host
git grep set_cr4_guest_host_mask
vim arch/x86/kvm/vmx/nested.c
vim arch/x86/kvm/vmx/vmx.c
vim arch/x86/kvm/pmu.c
vim arch/x86/kvm/i8254.c
git grep AMD arch/x86/kvm/
vim arch/x86/kvm/kvm-amd.mod.c
vim arch/x86/kvm/vmx/vmx.c
vim arch/x86/kvm/Kconfig
vim arch/x86/kvm/svm.c 
git grep svm_decache_cr4_guest_bits
git grep decache_cr4_guest_bits
vim arch/x86/kvm/vmx/vmx.c
vim -t svm_decache_cr4_guest_bits
git grep struct\ vmcb
vim arch/x86/include/asm/svm.h
vim -t svm_decache_cr4_guest_bits
vim arch/x86/include/asm/svm.h
vim -t svm_decache_cr4_guest_bits
vim -t vmx_set_cr4
git grep guest_owned_bits
git grep guest_owned_bits | grep -v svm.c
vim arch/x86/kvm/kvm_cache_regs.h
git grep KVM_POSSIBLE_CR4_GUEST_BITS
git grep KVM_POSSIBLE_CR0_GUEST_BITS
git grep guest_owned_bits | grep -v svm.c
git log -p
vim arch/x86/include/asm/kvm_host.h
git add arch/x86/include/asm/kvm_host.h
git status
git commit --amend
git status
git diff
git grep set_cr4_guest_host_mask
vim arch/x86/kvm/vmx/nested.c
git grep guest_owned_bits | grep -v svm.c
git grep CR4_GUEST_HOST_MASK
git grep CR0_GUEST_HOST_MASK
vim arch/x86/kvm/x86.c
git status
vim arch/x86/kvm/x86.c
vim -t native_write_cr4
vim arch/x86/kvm/x86.c
git status
ll
~/run.sh 2>&1 | grep -i kvm
~/run.sh
sudo journalctl --dmesg
git status
cd linux-combined/
git status
git diff
vim init/do_mounts.c
git diff v5.3 init/do_mounts.c
git status
git add -A
git status
git commit --amend
git push -f
git diff v5.3
git checkout v5.3 arch/x86/kernel/cpu/common.c
git status
git diff --staged
git add -A
git c 're-enable non virtualized pinning'
git push
git diff v5.3
./scripts/checkpatch.pl 
vim ./scripts/checkpatch.pl
git status
git diff v5.3 > ../kvm_cr.patch
vim ../kvm_cr.patch
git checkout -b kvm_cr_patch
git checkout master
git branch -D kvm_cr_patch
git apply < ../kvm_cr.patch
git diff --staged
git diff
git status
git reset --hard HEAD
git pull
git log
git remote add upstream git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
git branch --set-upstream-to upstream/master
git fetch --all
git branch --set-upstream-to upstream/master
git pull
git status
git log
git apply < ../kvm_cr.patch
git status
git checkout -b kvm_cr_patch
git merge --sqush protect_cr4
git merge --sqush origin/protect_cr4
git merge --squash protect_cr4
git status
git diff
vim arch/x86/kvm/x86.c
git diff
git status
git add -A
git status
git diff --staged
git status
git commit -sm
git commit -s
git push -u pdxjohnny
git push -u origin
git push -u origin kvm_cr_patch
git log
git status
git log
reset
git log
git commit --amend
git status
git push -f
git status
git log
git push -f
git log
git status
git format-patch --cover-letter -M origin/master -o outgoing/
git status
rm -rf outgoing/
git format-patch --cover-letter -M upstream/master -o outgoing/
vim outgoing/0000-cover-letter.patch 
vim outgoing/0001-KVM-X86-Add-kernel-hardening-hypercall.patch 
vim ~/.gitconfig
git send-email --help
sudo apt-get install -y get-send-email
sudo dnf install -y get-send-email
sudo dnf install -y git-send-email
sudo dnf install -y git-email
git send-email --help
git send-email --annotate
git send-email --annotate --to john.s.andersen@intel.com
git send-email --annotate --to john.s.andersen@intel.com --from john.s.andersen@intel.com
git send-email --annotate --to john.s.andersen@intel.com --from john.s.andersen@intel.com outgoing/0001-KVM-X86-Add-kernel-hardening-hypercall.patch
vim ~/.gitconfig
git send-email --annotate --to john.s.andersen@intel.com --from john.s.andersen@intel.com outgoing/0001-KVM-X86-Add-kernel-hardening-hypercall.patch
git send-email --annotate --to john.s.andersen@intel.com --cc rick.p.edgecombe@intel.com --cc kristen.c.accardi@intel.com --from john.s.andersen@intel.com outgoing/0001-KVM-X86-Add-kernel-hardening-hypercall.patch
git status
vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/Kconfig
git diff
git add -A
git commit --amend
git log -p
vim arch/x86/include/asm/kvm_host.h
git add -A
git commit --amend
git log -p
git grep IS_ENABLED
vim arch/arc/mm/tlb.c:
vim arch/arc/mm/tlb.c
git log -p
vim arch/x86/kernel/kvm.c
git diff
git add -A
git commit --amend
git log -p
git push -f
git format-patch --cover-letter -M upstream/master -o outgoing/
grep printk  outgoing/0001-KVM-X86-Add-kernel-hardening-hypercall.patch 
grep printk -C 5 outgoing/0001-KVM-X86-Add-kernel-hardening-hypercall.patch 
vim arch/x86/kernel/kvm.c
vim arch/x86/kvm/x86.c
git diff
git add -A && git commit --amend
git log -p
git status
git push -f
git commit --amend
git status
git push -f
git grep cr4_pinning
vim -t native_write_cr4
vim arch/x86/kvm/x86.c
git log -p
vim arch/x86/kernel/kvm.c
git diff
git grep __ro_after_init
git grep __ro_after_init | grep extern
time make -j $(($(nproc)*4)) bzImage
~/run.sh
git log -p protect_cr4
vim -t mont_block_root
vim -t mouunt_block_root
vim -t mount_block_root
git status
git diff
vim -t native_write_cr4
time make -j $(($(nproc)*4)) bzImage
~/run.sh
git status
git diff
vim -t native_write_cr4
time make -j $(($(nproc)*4)) bzImage
~/run.sh
git status
git diff
vim arch/x86/kernel/kvm.c
git diff
git reset --hard HEAD~1
git status
git pull
git log -p
vim arch/x86/kernel/kvm.c
git diff
git add -A && git commit --amend
git push -f
time make -j $(($(nproc)*4)) bzImage
~/run.sh 2>&1 | grep -i kvm
git log -p
vim arch/x86/kernel/kvm.c
git grep CONFIG_PARAVIRT_HARDEN_CR_PINNING
git grep CONFIG_PARAVIRT_HAR
git grep PARAVIRT
git log -p
vim arch/x86/kernel/kvm.c
git grep -p CONFIG_PARAVIRT
vim arch/x86/kernel/kvm.c
git grep CONFIG_PARAVIRT_HARDEN_CR_PINNING
git grep CONFIG_PARAVIRT_HARD
git grep PARAVIRT_HARD
git grep PARAVIRT_HARDEN_CR_PINNING
vim arch/x86/Kconfig
git grep -i guest_owned_bits
git grep -i CR4_GUEST_HOST_MASK,
git grep -i CR4_GUEST_HOST_MASK
git grep cr0_guest_owned_bit
git grep cr4_guest_owned_bit
vim arch/x86/kvm/vmx/vmx.c
ll arch/x86/kvm/
vim arch/x86/kvm/hyperv.
vim arch/x86/kvm/hyperv.c 
vim arch/x86/kvm/vmx/vmx.c
git grep set_cr4_guest_host_mask
vim arch/x86/kvm/vmx/vmx.c
git diff
grep PARAVIRT_HARDEN_CR_PINNING .config
git add -A
vim arch/x86/Kconfig
git status
git diff
git add -A
git commit --amend
git push -f
git log --p
git log -p
vim arch/x86/kvm/x86.c
git grep -E 'memset.*vcpu' arch/x86/kvm/
vim arch/x86/kvm/x86.c
git grep kvm_vpcu
vim arch/x86/kernel/kvm.c
vim -t native_write_cr4
git diff
vim -t native_write_cr4
git diff
git add -A && git commit --amend
git status
git push -f
git log -p
git grep -i CR4_GUEST_HOST_MASK
git grep cr4_guest_owned_bits
vim arch/x86/include/asm/kvm_host.h
git diff
git status
vim arch/x86/kvm/kvm.c
vim arch/x86/kvm/x86.c 
git diff
git add -A
git add -A && git commit --amend
git push -f
git log -p
vim arch/x86/kvm/x86.c 
vim Documentation/virt/kvm/hypercalls.txt
git status
git diff
vim arch/x86/kvm/x86.c 
git status
git diff
git add -A && git commit --amend
git push -f
git add -A && git commit --amend
git push -f
git log -p
vim Documentation/virt/kvm/hypercalls.txt
git log -p
git add -A && git commit --amend
git log -p
git grep kvm_x86_ops
vim arch/x86/include/asm/kvm_host.h
git log -p
vim arch/x86/kvm/x86.c
git diff
git status
git diff
git add arch/x86/kvm/x86.c
git commit --amend
git diff
git add -A
git c 'AMD svm_set_crX_guest_owned_bits'
git push
git push -f
git status
vim arch/x86/kvm/vmx/vmx.c
git grep set_cr4_guest_host_mask
vim arch/x86/kvm/vmx/vmx.c
vim arch/x86/kvm/vmx/nested.c
vim arch/x86/kvm/vmx/vmcs12.c
vim arch/x86/kvm/vmx/vmx.c
git diff
vim arch/x86/kvm/vmx/vmx.c
git diff
git status
git add -A
git status
git commit --amend
git status
git push -f
git format-patch --cover-letter -M upstream/master -o outgoing/
cp -r outgoing/ ../
git format-patch --cover-letter -M upstream/master -o ../outgoing/
rm -rf ../outgoing/
git format-patch --cover-letter -M upstream/master -o ../outgoing/
ll ../outgoing/
vim ../outgoing/0002-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch 
vim arch/x86/kvm/vmx/vmx.c
vim ../outgoing/0002-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch 
time make -j $(($(nproc)*4)) bzImage
vim arch/x86/kernel/cpu/common.c
git grep kvm_para_has_feature
vim arch/x86/kernel/cpu/common.c
git diff
time make -j $(($(nproc)*4)) bzImage
git format-patch --cover-letter -M upstream/master -o ../outgoing/
ll ../outgoing/
git push -f
~/run.sh 2>&1 | grep -i kvm
git status
uname -a
git log -p
vim .config
git status
./scripts/checkpatch.pl ../outgoing/0001-KVM-X86-Add-kernel-hardening-hypercall.patch 
./scripts/checkpatch.pl ../outgoing/0002-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch 
vim arch/x86/include/asm/kvm_host.h
git diff
git add -A
git commit --amend
git format-patch --cover-letter -M upstream/master -o ../outgoing/
./scripts/checkpatch.pl ../outgoing/0002-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch 
git push -f
git checkout -b test_reverse_order
git reset --hard upstream/master
git apply ../outgoing/0002-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch
ig tstatus
git status
git diff
git reset --hard upstream/master
git am ../outgoing/0002-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch
git log
git am ../outgoing/0001-KVM-X86-Add-kernel-hardening-hypercall.patch
git log
git log -p
rm -rf ../outgoing/
git status
git format-patch --cover-letter -M upstream/master -o ../outgoing/
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
git rebase -i HEAD~2
git status
vim arch/x86/kvm/vmx/vmx.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
vim arch/x86/kvm/vmx/vmx.c
vim arch/x86/kvm/vmx/nested.
vim arch/x86/kvm/vmx/nested.c
vim arch/x86/kvm/svm.c 
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
vim arch/x86/kvm/svm.c 
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
git grep KVM_CR4_GUEST_OWNED_BITS
vim arch/x86/kvm/vmx/vmx.h
vim arch/x86/kvm/vmx/vmx.c
vim arch/x86/kvm/vmx/vmx.h
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
vim arch/x86/kvm/svm.c 
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
vim arch/x86/kvm/vmx/vmx.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
git status
git diff
git add -A
git status
git rebase --continue
git format-patch --cover-letter -M upstream/master -o ../outgoing/
./scripts/checkpatch.pl ../outgoing/0002-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch 
./scripts/checkpatch.pl ../outgoing/0001-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch 
git rebase -i HEAD~2
vim arch/x86/kvm/vmx/vmx.h
git add -A
git status
git rebase --continue
git format-patch --cover-letter -M upstream/master -o ../outgoing/
./scripts/checkpatch.pl ../outgoing/0001-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch 
./scripts/checkpatch.pl ../outgoing/0002-KVM-X86-Add-kernel-hardening-hypercall.patch 
vim arch/x86/kvm/x86.c
git add -A && git commit --amend
git log -p
git format-patch --cover-letter -M upstream/master -o ../outgoing/
./scripts/checkpatch.pl ../outgoing/0002-KVM-X86-Add-kernel-hardening-hypercall.patch 
git status
git format-patch --cover-letter -M upstream/master -o ../outgoing/
git push -f
git branch
git branch -D kvm_cr_patch
git checkout -b kvm_cr_patch
git log
git push -f
git push --set-upstream origin kvm_cr_patch
git push --set-upstream origin kvm_cr_patch -f
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install
git format-patch --cover-letter -M upstream/master -o ../outgoing/
./scripts/checkpatch.pl ../outgoing/0002-KVM-X86-Add-kernel-hardening-hypercall.patch 
./scripts/checkpatch.pl ../outgoing/0001-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch 
git status
vim ../outgoing/0002-KVM-X86-Add-kernel-hardening-hypercall.patch 
git push -f
fg
sudo reboot
~/run.sh 2>&1 | grep -i kvm
git status
cd linux-combined/
git status
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install
sudo reboot
dmesg 
vim ~/run.sh 
~/run.sh
git status
dmesg 
dmesg | grep -i kvm
git status
git add -A
git c 'updates'
git push
cd linux-combined/
ll
git status
git format-patch --cover-letter -M upstream/master -o ../outgoing/
git status
git log
git checkout -b test v5.4-rc7
git am ../outgoing/
git status
git log
git am ../outgoing/*.patch
git am --abort 
git am ../outgoing/0001-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch
git am ../outgoing/0002-KVM-X86-Add-kernel-hardening-hypercall.patch
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install
sudo vim /etc/default/grub 
sudo grep gnulinux /boot/grub2/grub.cfg
sudo grep gnulinux /boot/grub2/grub2.cfg
sudo ls -lAF /boot/grub2/grub2.cfg
sudo ls -lAF /boot/grub2/
sudo ls -lAF /boot/
sudo ls -lAF /boot/efi/
sudo ls -lAF /boot/efi/EFI
sudo ls -lAF /boot/efi/EFI/fedora/
sudo ls -lAF /boot/efi/EFI/fedora/grub.cfg
sudo cat /boot/efi/EFI/fedora/grub.cfg
sudo cat /boot/efi/EFI/fedora/
sudo ls -lAF /boot/efi/EFI/fedora/
sudo cat /boot/efi/EFI/fedora/grubenv
sudo grubby --default-kernel
sudo grubby --default-kernel /boot/vmlinuz-5.4.0-rc7+
sudo grubby --set-default /boot/vmlinuz-5.4.0-rc7+
sudo grubby --default-kernel
sudo reboot
tmux attach
tmux
