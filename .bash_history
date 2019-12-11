git diff
cd ~/linux-combined/
git status
git log -p
vim arch/x86/kvm/x86.c
git diff
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
~/run.sh
~/run.sh -smp cpus=2
git status
gti status
git status
git diff
git status
git grep Boot\ 
git grep Booting\ SMP
vim arch/x86/kernel/smpboot.c
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
~/run.sh
~/run.sh -smp cpus=2
git status
git diff
git add -A
git commit --amend
git push -f
git status
git log -p
git format-patch -M upstream/master -o ../outgoing/
git log -p
vim arch/x86/Kconfig
git status
git diff
git add -A
git commit --amend
git push -f
git format-patch -M upstream/master -o ../outgoing/
git log -p
git status
git push -f
git fetch --all
git format-patch -M upstream/master -o ../outgoing/
git checkout -b hc_harden upstream/master 
git am ../outgoing/*
git log
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
time make -j $(($(nproc)*4)) && sudo make modules_install $(($(nproc)*4)) && sudo make install
sudo reboot
tmux
uname- a
uname -a
~/run.sh 
cd linux-combined/
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
~/run.sh 
vim ~/run.sh
~/run.sh 
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
~/run.sh 
time make -j $(($(nproc)*4)) && sudo make modules_install -j $(($(nproc)*4)) && sudo make install
sudo reboot
tmux attach
tmux
vim ~/run.sh
~/run.sh 
uname -a
vim ~/run.sh
ll /lib/modules/$(uname -r)/kernel/arch/x86/kvm/
ll /lib/modules/$(uname -r)/kerne
ll /lib/modules/$(uname -r)/kernel
ll /lib/modules/$(uname -r)/kernel/
cd linux-combined/
git log -p
git log
uname -a
ll /boot/
sudo grubby --set-default /boot/vmlinuz-5.4.0+
sudo reboot
dmesg 
cd linux-combined/
vim -t native_write_cr4
git format-patch -M upstream/master -o ../outgoing/
rm -rf ../outgoing/
git format-patch -M upstream/master -o ../outgoing/
cd ..
git clone git://git.kernel.org/pub/scm/virt/kvm/kvm-unit-tests.git
cd kvm-unit-tests/
./configure 
make -j
./run_tests.sh 
ll
vim logs/vmware_backdoors.log
~/run.sh 
~/run.sh 2>&1 | grep -i pinning
git status
git add -A
cd linux-combined/
git status
git push -u origin hc_harden
git send-email --annotate --cover-letter --to kristen.c.accardi@intel.com --to rick.p.edgecombe@intel.com --to linux-security@eclists.intel.com --to linux-drivers-review@eclists.intel.com --to sean.j.christopherson@intel.com --to jun.nakajima@intel.com HEAD~2
'git send-email --annotate --cover-letter --to kristen.c.accardi@intel.com --to rick.p.edgecombe@intel.com --to linux-security@eclists.intel.com --to linux-drivers-review@eclists.intel.com --to sean.j.christopherson@intel.com --to jun.nakajima@intel.com HEAD~2' echo>> README 
'git send-email --annotate --cover-letter --to kristen.c.accardi@intel.com --to rick.p.edgecombe@intel.com --to linux-security@eclists.intel.com --to linux-drivers-review@eclists.intel.com --to sean.j.christopherson@intel.com --to jun.nakajima@intel.com HEAD~2' >> ~/README.md 
vim ~/README.md
echo 'git send-email --annotate --cover-letter --to kristen.c.accardi@intel.com --to rick.p.edgecombe@intel.com --to linux-security@eclists.intel.com --to linux-drivers-review@eclists.intel.com --to sean.j.christopherson@intel.com --to jun.nakajima@intel.com HEAD~2' >> ~/README.md 
vim ~/README.md
cd ..
git status
git add -A
git status
git add outgoing/0000-cover-letter.patch 
git add -f outgoing/0000-cover-letter.patch 
git status
git c 'cover letter'
git push
cd linux-combined/
git remote add kvm git://git.kernel.org/pub/scm/virt/kvm/kvm.git
git fetch kvm
git checkout kvm-next
git branch -r
git checkout kvm/linux-next
git status
git checkout -b hc_harden_kvm_linux_next
git am ../outgoing/0001-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch
git status
git diff
git log --graph hc_harden
git log hc_harden
git merge --squash 538849f08862a63db632849f05ce052aee99773f
git status
git reset --hard HEAD
git apply < ../outgoing/0001-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch
git statsu
ll
git log -p hc_harden
git reset --hard HEAD
git status
git branch
git checkout cr_harden_per_kvm_not_vcpu
git checkout hc_harden
git log
git log -p
git status
git log
git am --abort
git status
git log -p
git status
git branch
git log -p kvm_cr_patch
git log
git branch
git log -p kvm_cr_patch
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
git status
git log -p
git diff
git log -p
git diff HEAD~1
git grep setup_cr_pinning
git diff HEAD~1
git add -A
git commit --amend
git push -f
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
vim .config
git grep PARAVIRT_CR_PIN
git grep PARAVIRT_CR
git grep PARAVIRT
vim arch/x86/Kconfig
git grep PARAVIRT_CR
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
~/run.sh 
~/run.sh 2>&1 | grep -i pinning
~/run.sh -smp cpus=2 2>&1 | grep -i pinning
~/run.sh -smp cpus=2
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
git status
git add -A
git commit --amend
git format-patch -M upstream/master -o ../outgoing/
git reset --hard HEAD~1
vim ../outgoing/
vim ../outgoing/0002-KVM-X86-Add-kernel-hardening-hypercall.patch
git am ../outgoing/0002-KVM-X86-Add-kernel-hardening-hypercall.patch
git status
git log
git log -p
time make -j $(($(nproc)*4)) && sudo make modules_install -j $(($(nproc)*4)) && sudo make install
git status
git push -f
git format-patch -M upstream/master -o ../outgoing/
sudo reboot
cd linux-combined/
ll
vim arch/x86/include/asm/kvm_host.h
vim arch/x86/kvm/svm.c
vim arch/x86/kvm/vmx/nested.c
vim arch/x86/kvm/vmx/vmx.c
vim arch/x86/kvm/vmx/vmx.h
vim arch/x86/kvm/vmx/vmx.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
vim ~/run.sh
~/run.sh 
~/run.sh 2>&1 | grep -i pinning
vim arch/x86/include/asm/kvm_host.h
vim arch/x86/kvm/x86.c
git grep HARDEN
git grep HC_HARDEN
vim Documentation/virt/kvm/hypercalls.txt
vim arch/x86/include/uapi/asm/kvm_para.h
vim Documentation/virt/kvm/hypercalls.txt
git grep HC_HARDEN
vim include/uapi/linux/kvm_para.h
vim arch/x86/kernel/cpu/common.c
vim arch/x86/kvm/cpuid.c
vim -t kvm_emulate_hypercall
vim arch/x86/Kconfig
vim arch/x86/include/uapi/asm/kvm_para.h
vim arch/x86/kvm/cpuid.c
vim -t kvm_emulate_hypercall
vim include/linux/kvm_host.h
vim arch/x86/include/uapi/asm/kvm_para.h
git grep kvm_x86_ops
vim arch/x86/include/asm/kvm_host.h
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) bzImage
vim arch/x86/kernel/cpu/common.c
git diff
tmux
sudo journalctl --dmesg -f
~/run.sh 2>&1 | grep -i pinning
~/run.sh -smp cpus=2 2>&1 | grep -i pinning
cd linux-combined/
ll
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
vim arch/x86/kvm/x86.c
vim -t KVM_CPUID_SIGNATURE
vim -t KVM_EINVAL
vim arch/x86/kvm/x86.c
vim -t native_write_cr4
vim arch/x86/kvm/x86.c
vim -t KVM_EINVAL
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
~/run.sh -smp cpus=2 2>&1 | grep -i pinning
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
~/run.sh -smp cpus=2 2>&1 | grep -i pinning
vim arch/x86/kvm/x86.c
~/run.sh -smp cpus=2 2>&1 | grep -i pinning
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
~/run.sh -smp cpus=2 2>&1 | grep -i pinning
git diff
vim arch/x86/kvm/x86.c
git diff
git add -A
git commit --amend
git push -f
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
~/run.sh -smp cpus=2 2>&1 | grep -i pinning
git log -p
vim arch/x86/Kconfi
vim arch/x86/Kconfig
git status
git add -A
git commit --amend
git log -p
vim arch/x86/Kconfig
git status
git diff
git add -A
git commit --amend
git push -f
vim arch/x86/Kconfig
git diff
git add -A
git commit --amend
git push -f
git branch
git log -p protect_cr4
vim arch/x86/kvm/x86.c
git grep -A 30 kvm_set_cr4\(
vim /tmp/f
cat > /tmp/f
vim /tmp/f
cat /tmp/f
time make -j $(($(nproc)*4)) vmlinuz
time make -j $(($(nproc)*4)) vmlinux
vim ~/run.sh 
~/run.sh 
vim ~/run.sh 
~/run.sh 
vim ~/run.sh 
~/run.sh 
vim ~/run.sh 
git grep cr4
git grep cr4 arch/x86
vim arch/x86/Kconfig
git status
git diff
git grep cr4 arch/x86
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
vim .config
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
time make -j $(($(nproc)*4)) vmlinux
sudo vim ~/chroot/usr/bin/init.sh
~/run.sh -s -S
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh -s -S
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh -s -S
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh -s -S
cd linux-combined/
gdb vmlinux 
vim arch/x86/kernel/machine_kexec_64.c
gdb vmlinux 
time make -j $(($(nproc)*4)) vmlinux
gdb vmlinux 
cat >> ~/README.md
vim ~/README.md
cd ..
git status
git diff
git add -A
git status
git c 'fixed a coupel kexec issues, still hitting ldgt issue'
git push
cd linux-combined/
gdb vmlinux 
time make -j $(($(nproc)*4)) bzImage
gdb vmlinux 
cd linux-combined/
git grep '%rax,%cr0'
git grep '%rax, %cr0'
vim arch/x86/kernel/head_64.S
vim arch/x86/kernel/relocate_kernel_64.S
git diff
vim arch/x86/kernel/relocate_kernel_64.S
git diff
git status
git c 'fixed first two kexec writes'
git push
git grep cpu_debug_store
vim ~/run.sh
vim ~/chroot/usr/bin/init.sh
sudo vim ~/chroot/usr/bin/init.sh
vim -t kvm_get_rip
git grep kvm.\*rip
vim -t kvm_rip_read
vim -t kvm_rip_write
git grep kvm_rip_write
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
time make -j $(($(nproc)*4))
sudo make modules_install -j $(($(nproc)*4))
sudo reboot
uname -a
vim ~/run.sh
~/run.sh
cd ~/linux-combined/
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
~/run.sh
vim ~/run.sh
time make -j $(($(nproc)*4)) && make -j $(($(nproc)*4)) modules_install && make install
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && make install
sudo make install
tmux
sudo journalctl --dmesg -f
sudo reboot
uname -a
cd ~/qemu/
git grep kvm_mem_ioeventfd_add
vim ~/run.sh 
~/run.sh
INIT=/usr/bin/init.sh ~/run.sh
vim ~/run.sh
cd linux-combined/
git status
git diff
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
vim ~/run.sh
~/run.sh
INIT=/usr/bin/init.sh ~/run.sh
vim ~/run.sh
sudo vim ~/chroot/usr/bin/init.sh
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
INIT=/usr/bin/init.sh ~/run.sh
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
INIT=/usr/bin/init.sh ~/run.sh
git grep cr4
vim arch/x86/boot/compressed/head_64.S
git grep cr4
vim arch/x86/boot/compressed/head_64.S
time make -j $(($(nproc)*4)) bzImage
vim arch/x86/boot/compressed/head_64.S
time make -j $(($(nproc)*4)) bzImage
INIT=/usr/bin/init.sh ~/run.sh
git grep CR0_PE
vim arch/x86/boot/compressed/head_64.S
time make -j $(($(nproc)*4)) bzImage
INIT=/usr/bin/init.sh ~/run.sh
git diff
git c 'fixed cr0'
git push
git grep PGE
git grep _PGE
git grep _PGE arch/x86
vim arch/x86/kernel/head_64.S
time make -j $(($(nproc)*4)) bzImage
echo 0 | sudo tee /proc/sys/kernel/randomize_va_space
INIT=/usr/bin/init.sh ~/run.sh
echo 2 | sudo tee /proc/sys/kernel/randomize_va_space
INIT=/usr/bin/init.sh ~/run.sh
git status
git diff
git add -A
git commit --amend
git status
git log
git rebase -i HEAD~2
git commit --amend
git log
git log -p
git rebase -i HEAD~2
git status
git rebase --continue
git log
git log -p
git rebase -i HEAD~2
vim arch/x86/Kconfig
git status
git diff
git add -A
git rebase --continue
git status
git log -p
git log --stat
git rebase --continue
git push -f
git rebase -i HEAD~2
git log -p
git rebase --continue
git status
git log
git log -p
git log --stat
vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git diff
git add -A
git commit --amend
git push -f
time make -j $(($(nproc)*4)) bzImage
INIT=/usr/bin/init.sh ~/run.sh
d
reset
df -h
vim -t kvm_mem_ioeventfd_add
git grep kvm_mem_ioeventfd_add
git grep ioeventfd
git format-patch -M upstream/master -o ../outgoing/
rm -rf ../outgoing/
git format-patch -M upstream/master -o ../outgoing/
git reset --hard HEAD~3
git status
git am ../outgoing/0003-X86-boot-Keep-CR-protections-during-kexec.patch
git am ../outgoing/0001-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch
git log
git log -p
git reset --hard HEAD~1
cd ../outgoing/
cp 0001-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch 0002-KVM-X86-vmx-setters-for-guest-owned-CR-bits.patch
cp 0001-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch 0003-KVM-X86-svm-setters-for-guest-owned-CR-bits.patch
cp 0001-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch 0004-KVM-X86-ops-setters-for-guest-owned-CR-bits.patch
ll
mv 0003-X86-boot-Keep-CR-protections-during-kexec.patch 0001-X86-boot-Keep-CR-protections-during-kexec.patch
ll
mv 0002-KVM-X86-Add-kernel-hardening-hypercall.patch 0005-KVM-X86-Add-cr-pin-hypercall.patch 
ll
rm 0001-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch 
ll
vim 0002-KVM-X86-vmx-setters-for-guest-owned-CR-bits.patch 
vim 0003-KVM-X86-svm-setters-for-guest-owned-CR-bits.patch 
vim 0004-KVM-X86-ops-setters-for-guest-owned-CR-bits.patch 
cd ../linux-combined/
git status
git reset --hard HEAD~1
git am ../outgoing/*
git am --show-current-patch
git status
git log -p
git reset --hard HEAD~1
vim ../outgoing/0003-KVM-X86-svm-setters-for-guest-owned-CR-bits.patch 
git status
git log
git status
git am --abort
git log
git status
git reset --hard HEAD~2
git am ../outgoing/*
git status
git log
time make -j $(($(nproc)*4)) bzImage
git stats
git status
~/run.sh
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && make install
sudo make install
sudo reboot
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
cd linux-combined/
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
git log -p
vim arch/x86/Kconfig
git checkout -b hc_harden_kconfig
git status
gti diff
git status
git log
git log -p
git push -u pdxjohnny
git push -u origin
git push --set-upstream origin hc_harden_kconfig
git checkout hc_harden
git push -f
vim arch/x86/Kconfig
git diff
vim arch/x86/kernel/cpu/common.c
git status
git diff
git add -A
git commit --amend
git status
git log -p
vim arch/x86/Kconfig
vim arch/x86/kernel/cpu/common.c
git status
git diff
vim .config
git status
git diff
git add -A
git status
git commit --amend
git log -p
git push -f
git format-patch -M upstream/master -o ../outgoing/
rm -rf ../outgoing/
git format-patch -M upstream/master -o ../outgoing/
git rebase -i HEAD~5
git commit --amend
git status
git rebase --continue
git log -p
rm -rf ../outgoing/
git format-patch -M upstream/master -o ../outgoing/
git push -f
git log -p
vim arch/x86/kvm/x86.c
git grep KF_SMM
git grep HF_SMM
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/x86.c'
vim arch/x86/kvm/x86.c
git diff
sudo journalctl --dmesg -f
uptime
tmux
cd linux-combined/
git status
git log
git diff
git add -A
git c 'no pinning in SMM'
git push
rm -rf ../outgoing/
git format-patch -M upstream/master -o ../outgoing/
cp -r ~/outgoing/ /tmp/
rm /tmp/outgoing/0001-X86-boot-Keep-CR-protections-during-kexec.patch 
rm /tmp/outgoing/0006-no-pinning-in-SMM.patch 
cp -r ~/outgoing/0006-no-pinning-in-SMM.patch /tmp/outgoing/
git checkout -b nokexec
git reset --hard v5.4
git log
git am /tmp/outgoing/*
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
cd linux-combined/
ll
git am ../outgoing/0001-X86-boot-Keep-CR-protections-during-kexec.patch
git status
git log -p
tmuix
tmux
git log -p
git statu
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
cd linux-combined/
git log -p
git diff HEAD~2
git diff HEAD~1
tmux
cd linux-combined/
vim arch/x86/boot/compressed/head_64.S
vim arch/x86/kernel/relocate_kernel_64.S
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
tmux
cd linux-combined/
git diff HEAD~1
vim arch/x86/boot/compressed/head_64.S
cd linux-combined/
vim arch/x86/boot/compressed/head_64.S
vim arch/x86/kernel/head_64.S
vim arch/x86/kernel/relocate_kernel_64.S
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
cd linux-combined/
git diff HEAD~1
git log -p
mkdir ~/bits
cp ~/outgoing/0001-X86-boot-Keep-CR-protections-during-kexec.patch ~/bits/0001-cr0.patch
cp ~/outgoing/0001-X86-boot-Keep-CR-protections-during-kexec.patch ~/bits/
vim ~/bits//0
vim ~/bits//0001-cr0.patch
git status
git reset --hard HEAD
git reset --hard HEAD~1
git am ~/bits/0001-cr0.patch
git log
git diff HEAD~1
tmux
git status
cd linux-combined/
git status
vim arch/x86/boot/compressed/head_64.S arch/x86/kernel/head_64.S arch/x86/kernel/relocate_kernel_64.S
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
tmux
cd linux-combined/
git diff HEAD~1
git status
git log
git commit --amend
git format-patch -o ../outgoing/ HEAD~1
ll ~/outgoing/
git push -f
git push --set-upstream origin nokexec
vim ../bits/0001-X86-boot-Keep-CR-protections-during-kexec.patch 
cp ../bits/0001-X86-boot-Keep-CR-protections-during-kexec.patch ../bits/0001-X86-boot-Keep-CR-protections-during-kexec.patch
cp ../bits/0001-X86-boot-Keep-CR-protections-during-kexec.patch ../bits/0002-cr4.patch
vim ../bits/0002-cr4.patch
git am ../bits/0002-cr4.patch
git log -p
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
git status
git log
git commit --amend
git log
git push
vim arch/x86/boot/compressed/head_64.S arch/x86/kernel/head_64.S arch/x86/kernel/relocate_kernel_64.S
git diff
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
cd linux-combined/
tmux
cd linux-combined/
tmux
git status
rm "\\"
git status
git diff
git log
git push
vim arch/x86/boot/compressed/head_64.S arch/x86/kernel/head_64.S arch/x86/kernel/relocate_kernel_64.S
git grep EFLAGS
git grep EFLAGS arch/x86
git grep X86_EFLAGS_AC
git grep -C 5 X86_EFLAGS_AC
vim arch/x86/kernel/cpu/common.c
vim arch/x86/boot/compressed/head_64.S arch/x86/kernel/head_64.S arch/x86/kernel/relocate_kernel_64.S
git status
git diff HEAD~1
time make -j $(($(nproc)*4)) bzImage
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
git grep MSR_KVM_POLL_CONTROL
cd linux-combined/
git grep MSR_KVM_POLL_CONTROL
vim Documentation/virt/kvm/msr.txt
git grep MSR_KVM_CR._PIN_ALLOWED
git grep rdmsrl
git grep -E 'rdmsrl.*KVM'
git grep 'rdmsrl.*KVM'
git grep 'rdmsrl(MSR_KVM_KVM'
git grep 'rdmsrl(MSR_KVM'
git grep 'MSR_KVM'
git grep rdmsrl
tmux attach
tmux
vim arch/x86/include/uapi/asm/kvm_para.h
cd linux-combined/
vim arch/x86/include/uapi/asm/kvm_para.h
vim arch/x86/kernel/cpu/common.c
vim arch/x86/kvm/x86.c
git status
git diff
git status
git log
git commit --amend
git push -f
cd linux-combined/
git status
git idf
git diff
git log
git checkout -b kexec
git log -p kexec
git branch -D kexec
git checkout -b kexec
git log
git status
git diff
git status
git reset --hard HEAD
git log -p
git status
git checkout hc_harden
git log
git log -p
git status
git rebase -i HEAD~2
git status
git log
git log -p
git status
git push -f
git grep MSR_ arch/x86/kvm/
vim arch/x86/kvm/x86.c
git log -p
vim arch/x86/events/intel/rapl.c
vim arch/x86/kvm/x86.c
git diff
git status
git diff
git c 'add msr for pinable bits'
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
tmux
vim -t x86_spec_ctrl_setup_ap
cd linux-combined/
vim -t x86_spec_ctrl_setup_ap
vim -t identify_secondary_cpu
git grep identify_secondary_cpu
vim arch/x86/kernel/smpboot.c
vim -t identify_secondary_cpu
git diff
git stash
git rebase -i HEAD~2
git stash pop
git log
git status
vim arch/x86/kernel/cpu/common.c
git diff
git add -A
git status
git diff --staged
git rebase --abort
git status
git log
git commit --amend
git stash pop
git diff
git add -A
git commit --amend
git format-patch -M upstream/master -o ../outgoing/
git push -u origin
git push --set-upstream origin hc_harden_test
git status
cd linux-combined/
git log
git log --oneline
git rebase v5.4
git status
git diff
git add -A
git commit --amend
git rebase -i v5.4
git log --oneline
git log
git rebase -i HEAD~2
git log -p
git status
rm -rf ../outgoing/
git format-patch -M upstream/master -o ../outgoing/
cp ../outgoing/0004-KVM-X86-Add-CR-pin-hypercall.patch ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch
vim ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch
vim ../outgoing/0004-KVM-X86-Add-CR-pin-hypercall.patch 
vim ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch
git status
git checkout -b hc_harden_test v5.4
git am ../outgoing/*
git log -p
rm -rf ../outgoing/
git format-patch -M upstream/master -o ../outgoing/
git log -p
./scripts/checkpatch.pl ../outgoing/0001-KVM-X86-VMX-Add-setters-for-guest-owned-CR-bits.patch 
./scripts/checkpatch.pl ../outgoing/0002-KVM-X86-SVM-Add-setters-for-guest-owned-CR-bits.patch 
./scripts/checkpatch.pl ../outgoing/0003-KVM-X86-ops-Add-setters-for-guest-owned-CR-bits.patch 
./scripts/checkpatch.pl ../outgoing/0004-KVM-X86-Add-CR-pin-hypercall.patch 
vim arch/x86/kvm/x86.c
git status
git diff
git rebase -i HEAD~2
git stash
git rebase -i HEAD~2
git stash pop
git diff
git add -A
git rebase --continue
git status
git log -p
rm -rf ../outgoing/
git format-patch -M upstream/master -o ../outgoing/
./scripts/checkpatch.pl ../outgoing/0004-KVM-X86-Add-CR-pin-hypercall.patch 
./scripts/checkpatch.pl ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch 
./scripts/checkpatch.pl ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch   --fix
./scripts/checkpatch.pl --fix ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch
./scripts/checkpatch.pl --fix-inplace ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch
./scripts/checkpatch.pl ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch 
vim ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch
./scripts/checkpatch.pl ../outgoing/0005-X86-Use-KVM-CR-pin-hypercall.patch 
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
python3.7
python3.7 -m pip install --prefix=~/.local -U pytype
vim
cat /tmp/f
tmpd
cd ~/Doc
cd
cd $(mktemp -d)
git clone https://github.com/intel/ittapi
cd ittapi/
ll
git log
tmux attach
vim -t SVM_CR0_SELECTIVE_MASK
vim ~/git-send-email-cover
vim ~/.vimrc
vim ~/git-send-email-cover
cd ~/qemu/
vim target/i386/cpu.c
git status
git diff
git add target/
git status
git commit --amend
git push -f
git commit --amend
git push -f
vim ~/git-send-email-cover
cat ~/git-send-email-cover 
cd ~/outgoing/
vim 0001-KVM-X86-VMX-Add-setters-for-guest-owned-CR-bits.patch
cd ../out
cd ../outgoing/
vim 0001-KVM-X86-VMX-Add-setters-for-guest-owned-CR-bits.patch 
vim 0005-KVM-X86-Add-CR-pin-hypercall.patch 
vim 0006-X86-Use-KVM-CR-pin-hypercall.patch 
vim 0005-KVM-X86-Add-CR-pin-hypercall.patch 
vim 0006-X86-Use-KVM-CR-pin-hypercall.patch 
vim 0005-KVM-X86-Add-CR-pin-hypercall.patch 
tmux
cd linux-combined/
tmuix
tmux
git log --oneline
cd linux-combined/
tmux
ssh -p 2222
ssh -p 2222 127.0.0.1
fallocate -l 512M image.iso
mv image.iso ../
cd ..
rm image.iso 
fallocate -l 512M image.iso
rm image.iso 
fallocate -l 10G image.iso
ll
mkfs.ext4 -j image.iso
losetup -d -h
losetup -h
losetup -f image.iso 
sudo losetup -f image.iso 
losetup 
sudo mount /dev/loop0 /mnt/
ll /mnt/
sudo cp -r chroot/* /mnt/
ll /mnt/
sudo umount -d /mnt
umount -h
losetup 
vim run.sh 
tmux attach
cd 
mkdir dropbear
cd dropbear
curl -sSL 'https://matt.ucc.asn.au/dropbear/dropbear-2019.78.tar.bz2' | tar xvz
curl -sSL 'https://matt.ucc.asn.au/dropbear/dropbear-2019.78.tar.bz2' | tar xvJ
curl -sSL 'https://matt.ucc.asn.au/dropbear/dropbear-2019.78.tar.bz2' | tar xvj
cd dropbear-2019.78/
ll
./configure --disable-shared --enable-static
./configure --enable-static
make static -j $(($(nproc)*4))
make -j $(($(nproc)*4))
sudo ss -tpln
ll ~/chroot/var/log/
ip a
sudo ss -tpln
sudo dnf install -y golang
cd ~/
mkdir ssh-server
cd ssh-server
ll
curl -O https://gist.github.com/jpillora/b480fde82bff51a06238/raw/546fc573e0520be1cf87da48ce1097214b687dd8/sshd.go
ll
vim sshd.go 
rm sshd.go 
curl -sSLO https://gist.github.com/jpillora/b480fde82bff51a06238/raw/546fc573e0520be1cf87da48ce1097214b687dd8/sshd.go
vim sshd.go 
go get -v .
ll
mkdir -p ~/go/src/github.com/jpillora/sshd
mv sshd.go ~/go/src/github.com/jpillora/sshd/
cd ~/go/src/github.com/jpillora/sshd/
ll
go get -v .
ll
go get -v .
unset CC 
go get -v .
go build -tags netgo .
ll
file sshd
du -h 4
du -h sshd
sudo cp sshd ~/chroot/usr/bin/go-sshd
sudo mkdir -p ~/chroot/var/go-sshd/
cd ~/chroot/var/go-sshd/
sudo ssh-keygen -t rsa
ll
sudo chroot ~/chroot/
vim arch/x86/kvm/vmx/vmx.c
git log -p
python3
vim target/i386/kvm.c
cd ~/qemu/
vim target/i386/kvm.c
cd ~/qemu/
git grep XSTATE_FP_MASK
vim target/i386/cpu.h
git grep MSR_EFER
vim target/i386/cpu.h
git grep MSR_CORE_PERF_GLOBAL_STATUS
vim target/i386/cpu.h
git grep MSR_SMI_COUNT
vim target/i386/kvm.c
git grep steal_time
vim target/i386/machine.c
git grep steal_time
vim target/i386/machine.c
git grep steal_time
vim target/i386/cpu.c
git grep steal_time
git grep 'kvm-steal-time'
dmesg 
~/run.sh -smp cpus=2 2>&1 | grep -i pinning
git log -p
git commit --amend
git push -f
git rebase -i HEAD~2
git status
git push -f
vim arch/x86/Kconfig
git diff
git add -A
git commit --amend
git push -f
