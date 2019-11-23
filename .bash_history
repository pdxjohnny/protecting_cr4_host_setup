ll /tmp/
rm -rf seabios_debug_E49ix6/
vim ~/run.sh 
ll /tmp/
~/run.sh
vim arch/x86/kvm/x86.c
git grep is_smm arch/x86/kvm/x86.c
git grep is_smm arch/x86/kvm/
vim arch/x86/kvm/kvm_cache_regs.h
vim arch/x86/kvm/x86.c
vim -t KVM_EOPNOTSUPP
vim arch/x86/kvm/x86.c
vim arch/x86/include/uapi/asm/kvm_para.h
vim ~/run.sh 
ll
git status
git diff
vim arch/x86/kvm/vmx/vmx.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
vim arch/x86/kvm/x86.c
git grep kvm_vcpu
git grep struct\ kvm_vcpu
vim include/linux/kvm_types.h
git grep struct\ kvm_vcpu\ {
git grep struct\ kvm_vcpu\ \{
vim include/linux/kvm_host.h
vim arch/x86/kvm/x86.c
git grep harden
git grep struct\ harden\ 
git log -p
vim arch/x86/include/asm/kvm_host.h
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
git grep REBOOT_SUPPORT
vim arch/x86/include/uapi/asm/kvm_para.h
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
vim arch/x86/kvm/x86.c
vim ~/run.sh 
~/run.sh
git status
git diff
cd linux-combined/
git diff
vim ~/run.sh 
uname -r
vim arch/x86/kvm/x86.c
git diff
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
vim ~/run.sh 
~/run.sh
dme
dmesg 
vim ~/run.sh 
git status
git diff
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
tmux
gdb vmlinux 
~/run.sh -s -S
vim src/fw/kvm.c
cd ~/seabios/
vim src/fw/kvm.c
grep -rn SMMISADeviceBDF
grep -rn CONFIG_USE_SMM
vim -t SMMISADeviceBDF
git grep smm_
vim src/fw/paravirt.c
git grep -i smm
make menuconfig
vim Makefile 
make menuconfig
sed -i 's/CONFIG_DEBUG_LEVEL=1/CONFIG_DEBUG_LEVEL=3/' .config
sed -i 's/DEBUG_HDL_smi 9/DEBUG_HDL_smi 1/' src/config.h
make -j $(($(nproc)*4))
vim -t handle_smi
git grep KVM_SMI
cd ~/linux-combined/
git grep KVM_SMI
vim Documentation/virt/kvm/api.txt
~/run.sh 
vim ~/seabios.log 
~/run.sh 
vim ~/seabios.log 
cd ~/seabios/
dmesg 
git grep Changing
vim src/hw/serialio.
vim src/hw/serialio.c 
git diff
vim src/fw/smm.c
vim .config
make -j $(($(nproc)*4))
vim src/fw/smm.c
vim .config
make -j $(($(nproc)*4))
tail -f ~/seabios.log 
vim src/fw/smm.c
git grep cr4
git grep -i cr4
git grep reboot
vim src/resume.c
git rep 30000
git grep 30000
git grep BUILD_SMM_INIT_ADDR
vim src/fw/smm.c
git grep _hypercall_2
git grep _hypercall2
vim src/fw/smm.c
vim src/fw/kvm.c
git status
vim ~/.gitconfig 
cat >> .gitignore 
git status
git diff
git status
git add -A
git stauts
git status
git c 'kvm support'
git remote add pdxjohnny git@github.com:pdxjohnny/seabios.git
git push -u pdxjohnny kvm_kc_harden
git push -u pdxjohnny kvm_hc_harden
git diffgit status
it diff
git diff
vim src/fw/kvm.c
vim src/fw/smm.c
git grep CONFIG_XEN
vim src/config.h
find . -name config.h
vim src/config.h
find . -name autoconf.h
vim out/autoconf.h 
grep -rn config.h
rep -rn CONFIG_XEN
grep -rn CONFIG_XEN
vim .config
vim Makefile 
git grep XEN
vim src/Kconfig
make olddefconfig
vim .config
make -j $(($(nproc)*4))
vim src/fw/smm.c
vim src/fw/kvm.c
vim src/fw/smm.c
vim src/fw/kvm.c
vim src/fw/smm.c
git grep xen_
vim src/fw/paravirt.c
vim src/fw/kvm.c
vim src/fw/paravirt.c
git grep runningOnKVM
vim src/fw/paravirt.h
git grep PF_XEN
vim src/fw/xen.c
git grep -pn xenpreinit
git grep -pn xen_preinit
vim src/post.c
vim src/fw/paravirt.c
git status
git add -A
git commit --amend
git status
git push -f
vim src/fw/smm.c
vim src/fw/paravirt.c
vim src/post.
vim src/fw/kvm.c
vim src/fw/smm.c
vim src/fw/kvm.c
git grep PF_KVM
vim src/fw/paravirt.c
vim src/fw/kvm.c
vim src/fw/kvm.h
vim src/fw/kvm.c
vim src/fw/smm.c
vim src/post.c
git status
git diff
git add -A
git commit --amend
git push -f
git log -p
git format-patch -M upstream/master -o ../out-seabios/
git format-patch HEAD~1 -o ../out-seabios/
git status
git log
git checkout -b test rel-1.12.0
git log
git am ../out-seabios/0001-kvm-support.patch
git diff
git log -p
cd ~/qemu/
git stauts
git log
git log -p
vim target/i386/cpu.c
git diff
git add -A
git status
git add target/
git status
git commit --amend
git push -f
git log
git remote
git push -u -f pdxjohnny
git log
git remote -v
git remote set-url pdxjohnny git@github.com:pdxjohnny/qemu
git push -u -f pdxjohnny
tmux attach
~/run.sh 
vim -t kvm_set_cr4
time make -j $(($(nproc)*4)) && sudo make modules_install $(($(nproc)*4)) && sudo make install && sudo reboot
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
~/run.sh 
~/run.sh -no-reboot
git diff
vim -t kvm_set_cr4
git diff
git add -A && git commit --amend
git status
git diff
git rebase -i HEAD~2
git status
git stash
git status
git rebase -i HEAD~2
git stash pop
vim arch/x86/kvm/x86.
vim arch/x86/kvm/x86.c
git diff
git status
git add -A
git rebase --continue
git log -p
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
~/run.sh -no-reboot
~/run.sh
git status
git diff
git status
git reset --hard HEAD~2
git am ../outgoing/0002-KVM-X86-Add-setters-for-guest-owned-CR-bits.patch
git am ../outgoing/0001-KVM-X86-Add-kernel-hardening-hypercall.patch
git log
git brnach
git branch
git checkout kvm_cr_patch
git log
git checkout test
git log
git status
git push -u origin
git push --set-upstream origin test
git log -p
git log
git log -p
git commit --amend
git push -f
git status
git log -p
git status
vim -t kvm_set_cr4
git status
time make -j $(($(nproc)*4)) bzImage
~/run.sh
vim ~/run.sh 
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
time make -j $(($(nproc)*4)) && sudo make modules_install $(($(nproc)*4)) && sudo make install && sudo reboot
reset
~/run.sh 
~/run.sh -no-reboot
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
~/run.sh -no-reboot
~/run.sh
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
~/run.sh
~/run.sh -no-reboot
git commit --amend
git push -f
~/run.sh && less ~/seabios.log 
ll ~/seabios/seriallog-20191119_1*
vim /home/johnsa1/seabios/seriallog-20191119_175710.log
vim ~/run.sh
~/run.sh && less ~/seabios.log 
vim ~/run.sh
~/run.sh && less ~/seabios.log 
vim ~/run.sh
~/run.sh && less ~/seabios.log 
less ~/seabios.log 
less -r ~/seabios.log 
~/run.sh && less ~/seabios.log 
less -r ~/seabios.log 
vim ~/run.sh
less -r ~/seabios.log 
~/run.sh && less ~/seabios.log 
vim ~/seabios.log
less -r ~/seabios.log
git grep hypercall2
vim arch/mips/include/asm/kvm_para.h
vim arch/x86/include/asm/kvm_para.h
git grep X86_FEATURE_VMMCALL
vun arch/x86/include/asm/cpufeatures.h
vim arch/x86/include/asm/cpufeatures.h
git grep hypercall2
vim arch/x86/include/asm/kvm_para.h
git status
cd ~/seabios/
vim src/fw/kvm.c
vim src/fw/kvm.h
vim src/fw/smm.c
vim src/fw/kvm.h
~/run.sh && less ~/seabios.log 
less ~/seabios.log 
python3
tmux attach
cd ../seabios/
git format-patch HEAD~1 -o ../out-seabios/
git status
git push -f
git log
git reset --hard HEAD~2
git branch
git checkout master
gi tlog
git pull
git log
git tag
git checkout rel-1.12.1
git am ../out-seabios/0001-smm-kvm-hardening-support.patch
git log -p
git status
git log -p
git status
git reset --hard HEAD~1
git log
make clean
vim src/fw/smm.c
git log
make -j $(($(nproc)*4))
git grep acpi
git status
git log
git am ../out-seabios/0001-smm-kvm-hardening-support.patch
make -j $(($(nproc)*4))
ll out/bios.bin
git log -p
vim src/fw/kvm.c
vim src/fw/kvm.h
git checkout HEAD~1 Makefile
rm src/fw/kvm.c
git status
git diff
vim src/fw/kvm.h
git status
git diff
git add -A
git diff --staged
vim src/fw/kvm.h
vim src/fw/smm.c
git blame src/fw/smm.c
git log -p f4c511cd
vim src/fw/smm.c
git grep qemu_reboot
vim src/util.h
vim src/fw/shadow.c
vim src/fw/smm.c
git grep CALL32
vim src/stacks.h
vim src/fw/smm.c
vim src/fw/shadow.c
vim src/fw/smm.c
vim src/fw/shadow.c
git grep CALL32
git checkout HEAD~1 Makefile
git grep oub
git grep outb
git grep PORT_SMI
vim src/fw/shadow.c
git grep qemu_reboot
vim src/resume.c
vim src/util.h
vim src/resume.c
vim src/util.h
vim src/resume.c
vim src/fw/shadow.c
vim src/fw/smm.c
vim src/util.h
vim src/resume.c
vim src/fw/smm.c
vim src/fw/shadow.c
vim src/util.h
vim src/fw/kvm.h
vim src/fw/smm.c
vim src/fw/shadow.c
git grep PORT_SMI
vim src/fw/shadow.c
vim src/fw/smm.c
vim src/resume.c
vim src/util.h
vim src/fw/shadow.c
vim src/resume.c
vim src/fw/smm.c
vim src/resume.c
vim src/resume.h
vim src/fw/smm.c
git grep runningOnKVM
vim src/resume.h
vim src/resume.c
git grep PORT_SMI_STATUS
vim src/fw/smm.c
vim src/resume.c
git grep In\ res
vim src/resume.c
git diff
git reset --hard HEAD
git staus
git status
git log -p
git status
git log
git log -p
git format-patch HEAD~1 -o ../out-seabios/
dmesg 
ps aux | grep git
kill 4273
git format-patch -M upstream/master -o ../outgoing/
rm -rf ../outgoing/
git format-patch -M upstream/master -o ../outgoing/
cat ../outgoing//*
git format-patch -M upstream/master -o ../outgoing/
rm -rf ../outgoing/
git format-patch -M upstream/master -o ../outgoing/
vim arch/x86/kvm/x86.c
dmesg 
vim arch/x86/kvm/x86.c
dmesg 
git grep cr4 arch/x86/kvm/
git grep -pn cr4 arch/x86/kvm/
vim -t enter_smm
dmesg 
git grep -pn cr4 arch/x86/kvm/
dmesg 
vim -t enter_smm
git blame arch/x86/kvm/x86.c
git log -p 660a5d517aaab
dmesg 
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/vmx/vmx.c
dmesg
cd ..
git clone git://git.seabios.org/seabios.git seabios
vim ~/.local/bin/git-proxy 
git clone git://git.seabios.org/seabios.git seabios
vim /usr/bin/git-proxy 
vim ~/.gitconfig 
vim /usr/bin/git-proxy 
vim ~/.ssh/config 
ssh psu
vim ~/.gitconfig 
vim ~/.ssh/config 
sudo vim /usr/bin/git-proxy 
git clone git://git.seabios.org/seabios.git seabios
git clone https://review.coreboot.org/seabios.git seabios
cd seabios/
ll
cd src/
ll
cd ..
ll
make -j $(($(nproc)*4))
vim ~/run.sh 
git grep reboot
git grep qemu_reboot
vim -t qemu_reboot
ctags -R *
vim -t qemu_reboot
vim src/paravirt.h
git log | grep intel.com
git log
vim -t qemu_reboot
git grep qemu_reboot
vim src/resume.c
git grep KVMKVMKVM
vim src/fw/paravirt.c
vim ~/run.sh 
vim scripts/readserial.py 
man mktemp
vim ~/run.sh 
cat scripts/readserial.py 
python3 -m pip install --user pyserial
python -m pip install --user pyserial
python2 ./scripts/readserial.py -nf /tmp/seabios_debug_??????/qemudebugpipe
ll /tmp/sea
ll /tmp/
ll /tmp/tmp.RozFEuwk6Z/
sudo ls -lAF /tmp/tmp.RozFEuwk6Z/
rm -rf /tmp/tmp.RozFEuwk6Z/
sudo rm -rf /tmp/tmp.RozFEuwk6Z/
ll
python2 ./scripts/readserial.py -nf /tmp/seabios_debug_??????/qemudebugpipe
git grep linux/
vim scripts/kconfig/list.h
git grep kvm
find . -name paravirt.h
vim src/fw/paravirt.h
git grep -KVM_EOPNOTSUPP
git grep runningOnKVM
vim src/fw/paravirt.c
find . -name \*kvm\*
cp src/fw/xen.c src/fw/kvm.c
git checkout -b kvm_hc_harden
git diff
git grep xen.c
vim Makefile 
cp src/fw/xen.h src/fw/kvm.h
vim src/fw/kvm.h
git grep PF_KVM
vim src/fw/paravirt.c
git grep readser
vim scripts/readserial.py
git grep -i baud
vim -t qemu_reboot
vim -t handle_smi
git grep -i 115200
git grep -i BUILD_SMM_INIT_ADDRESS
git grep -i BUILD_SMM_INIT_ADDR
vim src/fw/smm.c
git grep handle_smi
vim src/romlayout.S 
git grep handle_smi
vim src/romlayout.S
git grep BUILD_SMM_ADDR
vim src/config.h 
vim src/fw/smm.c
vim -t wbinvd
vim src/fw/smm.c
git grep smm_relocate_and_restore
vim src/fw/smm.c
vim Makefile 
make -j $(($(nproc)*4))
vim src/fw/smm.c
make -j $(($(nproc)*4))
vim src/fw/smm.c
make -j $(($(nproc)*4))
vim scripts/readserial.py 
vim Makefile 
make
make -j $(($(nproc)*4))
git status
git diff
git add -A
git status
git diff --staged
git status
git commit --amend
git push -f
make -j $(($(nproc)*4))
git status
git diff
make -j $(($(nproc)*4))
git status
git diff
git add -A
git status
git commit --amend
git push -f
git status
git idff
git push -f
git status
git diff
git log -p
git log
git status
git log
git log -p
git status
git checkout HEAD~1 src/post.c
git log
git log -p
git checkout HEAD~1 src/fw/paravirt.c
git status
git commit --amend
git log -p
make -j $(($(nproc)*4))
git status
git log -p
git status
git grep In res
git grep In\ resume
vim src/resume.c
git log -p
git checkout HEAD~1 scripts/readserial.py
git commit --amend
git log
git commit --amend
git status
git push
git log
git status
git log -p
git checkout HEAD~1 .gitignore
git status
rm seriallog-20191119_1*
git status
rm tags 
git status
git commit --amend
git status
git log -p
vim src/fw/smm.c
make -j $(($(nproc)*4))
vim src/fw/smm.c
make -j $(($(nproc)*4))
git status
git diff
git add -A
git commit --amend
git push f
git status
git push -f
git branch
git branch -d kvm_hc_harden
git status
git checkout -b status
git checkout -b kvm_hc_harden
git status
git log
git push -f
git push --set-upstream origin kvm_hc_harden -f
git push --set-upstream pdxjohnny kvm_hc_harden -f
vim src/config.h 
git log -p
vim src/config.h 
git status
git add -A
git commit --amend
git push -f
git status
git log
git format-patch -M upstream/master -o ../outgoing/
make -j $(($(nproc)*4))
git status
git grep In\ res
git status
git grep xen_para
git grep xen_
vim xen_preinit
vim -t xen_preinit
vim src/fw/paravirt.c
git grep runningOnKVM
vim src/fw/paravirt.c
git status
git grep cpuid
vim src/x86.c
vim src/x86.h
make -j $(($(nproc)*4))
make clean
make -j $(($(nproc)*4))
git status
git add src/fw/kvm.h 
git status
git diff --staged
git diff HEAD~1
ll
ll out/
objdump -D out/bios.bin | less -r
xxd out/bios.bin
xxd out/bios.bin | less -r
ll out/
ll out/src/fw/smm.o
objdump -D out/src/fw/smm.o
objdump -D out/src/fw/smm.o | less -r
make -j $(($(nproc)*4))
objdump -D out/src/fw/smm.o | less -r
objdump -D out/src/fw/smm.o > /tmp/smm.0
make -j $(($(nproc)*4))
objdump -D out/src/fw/smm.o > /tmp/smm.1
diff /tmp/smm.0 /tmp/smm.1
diff -c /tmp/smm.0 /tmp/smm.1
diff -y /tmp/smm.0 /tmp/smm.1 | less
make -j $(($(nproc)*4))
git status
git diff
git status
git add src/fw/smm.c 
git status
git diff --staged
git status
make -j $(($(nproc)*4))
vim src/config.h
make -j $(($(nproc)*4))
git diff
make -j $(($(nproc)*4))
git grep -i cr0
git status
git diff
git lo g-p
cd ~/qemu/
ll
git grep kvm_sregs
vim target/i386/kvm.c
git grep reboot
git grep qemu_system_reset
vim vl.c 
vim Documentation/virt/kvm/hypercalls.txt 
vim -t KVM_CPUID_SIGNATURE
git rep X86_FEATURE_VMMCALL)
git rep X86_FEATURE_VMMCALL
git grep X86_FEATURE_VMMCALL
vim arch/x86/include/asm/cpufeatures.h
objdump -D vmlinux | less -r
objdump -D vmlinux
readelf vmlinux
vim arch/x86/include/uapi/asm/kvm_para.h
git diff
vim arch/x86/include/uapi/asm/kvm_para.h
vim arch/x86/include/asm/kvm_host.h
vim arch/x86/include/uapi/asm/kvm_para.h
dems
dmesg 
git status
git log
git commit --amend
git push -f
git status
gitlog -p
git log -p
git status
git log -p
git diff
git log -p tools/arch/x86/include/uapi/asm/kvm.h
git log -p -- tools/arch/x86/include/uapi/asm/kvm.h
git log -p -- arch/x86/include/uapi/asm/kvm.h
git log
git log -p
git log -p --stat
~/run.sh
vim ~/seabios.log 
~/run.sh
vim ~/seabios.log 
~/run.sh
vim ~/seabios.log 
~/run.sh
vim ~/seabios.log 
~/run.sh
vim ~/seabios.log 
~/run.sh
vim ~/seabios.log 
~/run.sh
vim ~/seabios.log 
~/run.sh
vim ~/seabios.log 
~/run.sh
vim ~/seabios.log 
~/run.sh
vim ~/seabios.log 
~/run.sh 2>&1 | grep -i kvm
~/run.sh 2>&1 | grep -i pinning
~/run.sh
git status
git log
git status
~/run.sh 2>&1 | grep -i pinning
git status
~/run.sh
git status

[A
~/run.sh
dmesg 
~/run.sh
dmesg 
~/run.sh
dme
dmesg 
~/run.sh
xx
dmesg 
~/run.sh
dmesg 
~/run.sh -no-reboot
~/run.sh
~/run.sh 2>&1 | grep -i pinning
git status
git diff
git add -A
git status
git commit --amend
git status
git push -f
vim arch/x86/include/asm/kvm_host.h
vim arch/x86/include/uapi/asm/kvm_para.h
vim tools/arch/x86/include/uapi/asm/kvm_para.h
vim -t kvm_set_cr4
vim include/uapi/linux/kvm_para.h
git diff
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
~/run.sh 
git status
git diff
git add -A && git commit --amend
git status
git push -f
git log -p
git format-patch -M upstream/master -o ../outgoing/
time make -j $(($(nproc)*4)) && sudo make modules_install $(($(nproc)*4)) && sudo make install && sudo reboot
sudo reboot
tail -f ~/seabios
tail -f ~/seabios.log 
[A
tail -f ~/seabios.log 
tail -F ~/seabios.log 
vim ~/seabios.log
tail -F ~/seabios.log | grep -i kkvvmm
tail -F ~/seabios.log | grep -C 10 -i kkvvmm
vim ~/seabios.log
tail -F ~/seabios.log | grep -C 10 -i kkvvmm
tail -F ~/seabios.log 
vim ~/seabios.log
tail -F ~/seabios.log 
git format-patch -M upstream/master -o ../outgoing/
ll ../outgoing/
git log -p --stat
dms
dmesg 
git status
git grep -C PV_SEND_I
git grep -C 4 PV_SEND_I
vim arch/x86/kvm/x86.\c
vim arch/x86/kvm/x86.c
vim arch/x86/include/uapi/asm/kvm_para.h
git diff
vim arch/x86/include/asm/kvm_host.h
git diff
vim include/uapi/linux/kvm_para.h
vim arch/x86/kvm/x86.c
vim Documentation/virt/kvm/hypercalls.txt
git diff
vim arch/x86/kvm/x86.c
git diff
git add -A
git status
git diff --stagd
git diff --staged
git c 'attempt smm support'
git push
git grep kvm_cpuid
vim -t kvm_cpuid
vim arch/x86/kvm/cpuid.c
git log -p
vim arch/x86/kvm/cpuid.c
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/cpuid.c
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
vim include/uapi/linux/kvm_para.h
time make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
git diff
vim include/uapi/linux/kvm_para.h
git grep HC_HARDEN
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
git grep KVMKVMKVM
git status
git diff
vim arch/x86/kvm/x86.c
git add -A
git status
git diff --staged
git add -A && git commit --amend
git status
git push -f
git rebase -i HEAD~2
git log -p
git push -f
git log -p
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
vim arch/x86/kvm/x86.c
git diff
git add -A && git commit --amend
git status
git push -f
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
git status
git branch -D kvm_cr_patch
git checkout -b kvm_cr_patch
git pus h-f
git push -f
git push -u origin kvm_cr_patch
git push -u pdxjohnny kvm_cr_patch
git push -u origin kvm_cr_patch -f
git status
git log
git add -A && git commit --amend
git push -f
vim arch/x86/kvm/x86.c
git grep cpuid arch/x86/kvm/x86.c
git grep cpuid arch/x86/kvm/
vim arch/x86/kvm/cpuid.c
vim include/uapi/linux/kvm_para.h
vim arch/x86/include/asm/kvm_host.h
git grep KVM_HC_HARDEN_SMM_INIT
vim arch/x86/include/uapi/asm/kvm_para.h
vim -t kvm_set_cr4
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
vim -t machien_reboot
vim -t machine_reboot
git grep machine_reboot
git grep reboot
git grep reboot arch/x86/
vim arch/x86/kernel/reboot.c
git status
git diff
git status
git diff
git reset --hard HEAD
git status
git grep cpuid arch/x86/kvm/x86.c
vim arch/x86/kvm/x86.c
git grep kvm_setsregs
git grep kvm_set_sreg
git grep -i kvm_set_sreg
vim virt/kvm/kvm_main.c
git grep  kvm_arch_vcpu_ioctl_set_sregs
vim arch/x86/kvm/x86.c
git status
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
vim arch/x86/kvm/x86.c
git grep kvm_sregs
vim tools/arch/x86/include/uapi/asm/kvm.h
vim arch/x86/kvm/x86.c
git grep KVM_SYNC_X86_SREGS
vim tools/testing/selftests/kvm/x86_64/sync_regs_test.c
git grep KVM_CAP_SYNC_REGS
vim Documentation/virt/kvm/api.txt
vim tools/testing/selftests/kvm/x86_64/sync_regs_test.c
git status
vim arch/x86/kvm/x86.c
vim tools/arch/x86/include/uapi/asm/kvm.h
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
vim arch/x86/include/uapi/asm/kvm.h
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
git diff
vim arch/x86/include/uapi/asm/kvm.h
vim tools/arch/x86/include/uapi/asm/kvm.h
git diff
vim arch/x86/kvm/x86.c
git diff
time make -j $(($(nproc)*4)) M=arch/x86/kvm modules
cd ~/qemu/
git status
git commit --amend
git log | grep migrate
git log
git commit --amend
git log -p
git blame target/i386/cpu.c
git log 7f710c32bb8
git commit --amend
git log 7f710c32bb8
git status
git log
git push -f
uname -a
cd linux-combined/
git status
git push -f
~/run.sh 
~/run.sh 2>&1 | grep -i pinning
vim ~/.gitconfig 
cd linux-combined/
git send-email --help
git send-email HEAD~2
git send-email HEAD~2 --help
git send-email --help
git send-email --cc kristen.c.accardi@intel.com --cc rick.p.edgecombe@intel.com --compose --cover-leter
git send-email --help
git send-email --cc kristen.c.accardi@intel.com --cc rick.p.edgecombe@intel.com --compose --cover-letter
git send-email --compose --cover-letter --cc kristen.c.accardi@intel.com --cc rick.p.edgecombe@intel.com HEAD~2
git send-email --annotate--cover-letter --cc kristen.c.accardi@intel.com --cc rick.p.edgecombe@intel.com HEAD~2
git send-email --annotate --cover-letter --cc kristen.c.accardi@intel.com --cc rick.p.edgecombe@intel.com HEAD~2
dmesg 
dmesg --color=always | tail -n 60
dmesg --color=always | tail -n 50
dmesg --color=always | tail -n 52
watch -n 0.2 sh -c dmesg --color=always | tail -n 52'
watch -n 0.2 sh -c 'dmesg --color=always | tail -n 52'
watch -n 0.2 sh -c 'dmesg --color=always | tail -n 48'
sudo journalctl --dmesg -f
