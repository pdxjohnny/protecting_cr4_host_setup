make -j $(($(nproc)*4)) bzImage
vim arch/x86/boot/compressed/head_64.S
git log -p
cd ..
git status
git add -f outgoing/*
git status
cd linux-combined/
make -j $(($(nproc)*4)) bzImage
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
make -j $(($(nproc)*4))
~/run.sh
git status
git diff
make -j $(($(nproc)*4))
~/run.sh
~/test.sh
~/test.sh hibernate
git status
cd ..
git add -f outgoing/*
git status
git add -f outgoing/*
git status
git add -f outgoing/0004-X86-Use-KVM-CR-pin-MSRs.patch 
git status
ll outgoing/
git status
git add git-send-email-cover 
git status
git commit -sm 'prep for patch v2 to sean'
git push
git add -f outgoing/*
git status
git diff --staged
git status
git add outgoing/*
git diff --staged
git status
git add git-send-email-cover 
git add git-send-email-cover outgoing/*
git add -f outgoing/*
git add git-send-email-cover 
git satus
git status
git diff --staged
git status
git commit -sm 'patch v2 for sean'
git push
vim README.md 
cd linux-combined/
git send-email   --subject-prefix="PATCH v2"   --annotate   --cover-letter   --base=kvm/next   --to sean.j.christopherson@intel.com   HEAD~6
git status
git log
git send-email   --subject-prefix="PATCH v2"   --annotate   --cover-letter   --base=ed7004c86f72b6a7cd4942934c94782ae1b58a92   --to sean.j.christopherson@intel.com   HEAD~6
git log -n 1 | nc -lp 9999
dmesg 
dmesg -T
vim arch/x86/boot/compressed/head_64.S
vim arch/x86/kernel/head_64.S
vim arch/x86/kernel/relocate_kernel_64.S 
dmesg -T
vim arch/x86/boot/compressed/head_64.S
vim arch/x86/kernel/head_64.S
vim arch/x86/kernel/relocate_kernel_64.S 
dmesg -T
ll
cd ../kvm-unit-tests/
ll
git grep -i smap
vim x86/smap.c
vim x86/umip.c
vim test.sh
ll
~/test.sh unittests
~/test.sh
cat /tmp/cr-pin-test-DlEnKZ5Wm2/hibernate_begin 
~/test.sh hibernate
ll
git grep cpuid
git grep feature
git grep this_cpu_has
igt grep FEATURE
git grep FEATURE
ll
git status
vim x86/vmx_tests.c
git diff
git stauts
git status
rm 0001-x86-Add-control-register-pinning-tests.patch 
~/test.sh unittests
git status
git add -A
git commit --amend
git stauts
git status
git log -p
vim x86/vmx_tests.c 
vim x86/cr_pin_*.c
git status
git diff
~/test.sh unittests
vim x86/cr_pin_*.c
~/test.sh unittests
vim x86/cr_pin_low.
vim x86/cr_pin_low.c
vim x86/cr_pin_high.
vim x86/cr_pin_high.c
vim x86/vmx_tests.c 
git status
git diff
git add -A
git commit --amend
~/test.sh unittests
git diff
cd ../linux-combined/
ll
vim arch/x86/boot/compressed/head_64.S 
vim arch/x86/boot/compressed/efi_thunk_64.S
vim arch/x86/kernel/head_64.S
vim arch/x86/kernel/relocate_kernel_64.S
git grep identity_mapped
vim arch/x86/kernel/relocate_kernel_64.S
git grep relocate_kernel
reset
git grep relocate_kernel
vim arch/x86/kernel/relocate_kernel_64.S
vim arch/x86/realmode/rm/trampoline_64.S
vim arch/x86/realmode/rm/wakeup_asm.S 
vim arch/x86/boot/compressed/head_64.S
git log -p nokexec
vim ../README.md 
cd ..
git add README.md 
git commit -sm 'README: nokexec is branch with kexec support for some dumb reason'
git push
cd kvm-unit-tests/
git log -p
cd ../linux-combined/
vim arch/x86/Kconfig
vim Documentation/admin-guide/kernel-parameters.txt 
git diff
git status
git diff
git add -A
git status
vim arch/x86/include/asm/kvm_para.h
vim arch/x86/kernel/kvm.c
git status
git diff
git grep kexec_load_disabled
vim Documentation/admin-guide/sysctl/kernel.rst
git grep kexec_load_disabled
vim kernel/sysctl.c
git grep kexec_load_disabled
git status
git grep crashkernel
git satus
git status
git diff
vim Documentation/admin-guide/sysctl/kernel.rst
git diff
git status
vim Documentation/admin-guide/kernel-parameters.txt
git status
git reset HEAD .
git satus
git diff
git status
git diff
cd
sudo vim chroot/usr/bin/init.sh 
sudo vim chroot/usr/bin/u
sudo vim chroot/usr/bin/uefi-setup.sh 
git add chroot/usr/bin/uefi-setup.sh
git status
git grep pv_cr_ping
git grep pv_cr_pin
ll chroot/home/johnsa1/run.sh
vim chroot/home/johnsa1/run.sh
vim git-send-email-cover 
vim Re
vim README.md 
git add README.md
git commit -sm 'TODO: crashkernel'
git push
git status
git diff
git status
ll
git status
git diff
git status
git diff
git status
cd linux-combined/
git status
git diff
vim t- reserve_crashkernel
vim -t reserve_crashkernel
git grep process_sysctl_arg
git grep rcu_end_inkernel_boot
vim init/main.c
vim -t reserve_crashkernel
git grep setup_arch
vim init/main.c 
git grep kexec_load_disabled
git grep mutualy
git grep 'mutually exclusive'
git diff
vim Documentation/admin-guide/kernel-parameters.txt
git status
git diff
vim Documentation/admin-guide/kernel-parameters.txt
git status
git diff
git checkout -- arch/x86/kernel/setup.c
vim arch/x86/kernel/setup.c
git add arch/x86/kernel/setup.c
git satus
git status
git diff
git add Documentation/admin-guide/kernel-parameters.txt
git diff
git add arch/x86/Kconfig
git add arch/x86/include/asm/kvm_para.h
git grep kvm_setup_paravirt_cr_pinning
git diff
git status
git diff --staged
git status
git log
git status
git diff
git grep cmdline_find_option_bool
git grep cmdline
vim kernel/params.c
git grep param_
git grep params.h
git grep params\.h
git grep params\.h | grep include
git grep /params\.h | grep include
git grep param_set_charp
vim include/linux/moduleparam.h
git status
git diff
git grep cmdline_find_option_bool
vim arch/x86/kernel/setup.c
git grep CONFIG_KEXEC
git grep KEXEC
git tatus
git diff
vim arch/x86/kernel/setup.c
git grep crashkernel
vim kernel/crash_core.c
vim arch/x86/kernel/setup.c
git status
git diff
git status
vim arch/x86/kernel/kvm.c
git diff
git add -A
git status
git diff --staged
vim Documentation/admin-guide/kernel-parameters.txt
git diff --staged
git status
git checkout -- Documentation/admin-guide/kernel-parameters.txt
git status
git diff --staged
vim arch/x86/kernel/setup.c
git status
git diff
git add -p
git status
git diff --staged
git status
git reset HEAD -p -- Documentation/admin-guide/kernel-parameters.
git reset HEAD -p -- Documentation/admin-guide/kernel-parameters.txt
git status
git diff --staged
git status
git commit --amend
git status
git add -A
git status
vim Documentation/admin-guide/kernel-parameters.txt 
vim Documentation/admin-guide/kernel-parameters.rst 
vim Documentation/admin-guide/kernel-parameters.txt 
git status
git diff
git add -A
git status
vim Documentation/admin-guide/kernel-parameters.txt 
git add -A
git status
git diff --staged
vim Documentation/admin-guide/kernel-parameters.txt 
vim Documentation/admin-guide/kernel-parameters.rst 
vim Documentation/admin-guide/kernel-parameters.txt 
git status
git diff --staged
vim arch/x86/kernel/setup.c
git status
git commit -sa
git status
git rebase --continue
git status
git checkout -b patch_v2_pre_sysctl
git push -u pdxjohnny 
git grep kexec_load_disabled
vim kernel/sysctl.c
git grep GUEST
git log -p
vim kernel/sysctl.c
git status
git diff
git status
git log
git log -p
git grep kvm_paravirt_cr_pinning_init
vim arch/x86/kernel/kvm.c
vim arch/x86/kernel/setup.c 
git status
vgrep disable_kexec
vgrep --help disable_kexec
vgrep -s 3 disable_kexec
vgrep -s 2 disable_kexec
vgrep disable_kexec -s 2
vgrep -s 2
vgrep cr_pin
vgrep -s 18
vim arch/x86/kernel/setup.c 
vgrep -s 18
gi satus
git status
git diff
git stash
vim arch/x86/kernel/setup.c 
git status
git diff
git log
git stash
git log -p
vim arch/x86/kernel/setup.c 
git status
git diff
git rebase -i HEAD~4
git stash pop
git status
vim arch/x86/kernel/setup.c 
git status
git diff
git rebase --abort
git rebase --continue
git rebase -i HEAD~5
git stash pop
vim arch/x86/kernel/setup.c 
gi tstatus
git diff
git add -A
git rebase --continue
git status
git log -p
git stash
git stash show
git stash pop
git diff
git log
git stash
git rebase --continue
git rebase -i HEAD~5
git stash pop
git diff
git add -A
git rebase --continue
git rebase -i HEAD~6
git log -p
git status
git log -p
vim arch/x86/kernel/kvm.c
vgrep User\ mode
vgrep User\ mode\ instruction
vgrep 'User Mode In'
vgrep -s 3
vim arch/x86/kvm/x86.c
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
vim ../README.md 
git log nokexec
git status
git diff
vim arch/x86/kernel/kvm.c
git status
git push -f
git checkout -b patch_v2_attemp_kexec
git add -A
git commit -sm 'CR0 working with kexec'
git push -u pdxjohnny 
git log nokexec
git cherry-pick c1a32919894bad6cb353e462ad90be77aa012d8b
git rebase -i HEAD~4
git log -p
git push -u -f origin 
git status
git log -p
git status
git log -n 3
git c 'X86: boot: Keep CR4 SMAP enabled'
git commit -sam 'X86: boot: Keep CR4 SMAP enabled'
git push
git rebase -i HEAD~4
git push -f
git status
git diff
git commit -sam 'X86: boot: Keep CR4 UMIP enabled'
git status
git rebase -i HEAD~5
git push -f
git checkout -b kexec_working
git push -u pdxjohnny 
git branch
git checkout patch_v2_sean
git checkout -b patch_v2_sean
git rebase -i HEAD~9
git log
git log -p
git rebase -i HEAD~6
git rebase --abort
git rebase -i HEAD~6
git status
git diff
vim arch/x86/kvm/x86.c
git diff
git add -A
git rebase --continue
git status
git log
git log -p
git rebase -i HEAD~9
git log -p
git status
git log --oneline
git log -p
git log --onelone
git log --oneline
git rebase -i HEAD~5
git status
git push -f
git push -u origin -f patch_v2_sean 
git log -p
git status
git log -p
git log patch_v2_attemp_kexec 
git cherry-pick edb56aa626187e5d6b28d5e0c9b2a3c7b99c34e6
git log
git log -p
git rebase -i HEAD~5
git status
git reset --hard HEAD
git rebase -i HEAD~5
git log -p
git status
git push -u -f 
git log -p
git rebase -i HEAD~4
git log -p
git status
git push -f
rm -rf ../outgoing/ && git format-patch HEAD~5 -o ../outgoing/
rm -rf ../outgoing/ && git format-patch HEAD~6 -o ../outgoing/
ll ../outgoing/
./scripts/checkpatch.pl ../outgoing//*
git status
git rebase -i HEAD~6
git status
git push -f
rm -rf ../outgoing/ && git format-patch HEAD~6 -o ../outgoing/
git rebase -i HEAD~6
vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git status
git diff
vim arch/x86/kvm/x86.c
git diff
git status
rm tools/testing/selftests/kvm/x86_64/smm_cr_pin_test
git status
git diff
git status
git add -A
git stauts
git status
git diff --staged
git stash
git rebase -i HEAD~4
git status
git log
git stash pop
git stauts
git diff --staged
git status
git add -A
git rebase --continue
git log -p
vim arch/x86/kernel/kvm.c
git log -p
git rebase -i HEAD~6
git status
git diff
git status
git diff
git reset --hard HEAD
git status
git lo g-p
git log -p
git rebase -i HEAD~6
git push -f
rm -rf ../outgoing/ && git format-patch HEAD~6 -o ../outgoing/
./scripts/checkpatch.pl ../outgoing//*
rm -rf ../outgoing/ && git format-patch HEAD~6 -o ../outgoing/
git log -p
vim Documentation/virt/kvm/msr.rst
git diff
vim Documentation/virt/kvm/msr.rst
git diff
git status
git stash
git rebase -i HEAD~6
git stash pop
git add -A
git rebase --continue
rm -rf ../outgoing/ && git format-patch HEAD~6 -o ../outgoing/
git rebase -i HEAD~6
git status
git push -f
git rebase -i HEAD~6
git statsu
rm -rf ../outgoing/ && git format-patch HEAD~6 -o ../outgoing/
git clone https://github.com/pdxjohnny/unalignedrop/tree/master/unalignedrop
git clone https://github.com/pdxjohnny/unalignedrop/
rm -rf unalignedrop/
git clone git@github.com:pdxjohnny/unalignedrop/
git clone git@github.com:pdxjohnny/unalignedrop
cd unalignedrop/
ll
vim setup.py 
black .
pip --version
python3 --version
python3 -m pip install -U pip
sudo python3 -m pip install -U pip
ll ~/.cache/pip/http/
ll ~/.cache/pip/http/*
ll ~/.cache/pip/http/*/*
ll ~/.cache/pip/http/*/*/*
ll -R ~/.cache/pip/http/*/*/*
ll -R ~/.cache/pip/
find ~/.cache/pip/
find ~/.cache/pip/ -type f
find ~/.cache/pip/ -type f -exec file {} \;
find ~/.cache/pip/ -type f -exec xxd {} \;
find ~/.cache/pip/ -type f -exec sha256 {} \;
find ~/.cache/pip/ -type f -exec sha256sum {} \;
sudo find /root/.cache/pip/ -type f -exec sha256sum {} \;
vim /root/.cache/pip/http/b/2/6/c/b/b26cb16cea62cf756e4cb2039503c1dd90244d5a100e5531313f36da
vim /home/johnsa1/.cache/pip/http/b/2/6/c/b/b26cb16cea62cf756e4cb2039503c1dd90244d5a100e5531313f36da
python
sudo rm /root/.cache/pip/http/b/2/6/c/b/b26cb16cea62cf756e4cb2039503c1dd90244d5a100e5531313f36da
sudo python3 -m pip install -U pip
git status
ll
vim setup.py 
python3 -m pip install -U black
vim ~/.bash_profile 
black .
git add -A
git commit -ammend 'Format with black'
git commit -sam 'style: Format with black'
ll
vim setup.py 
vim unalignedrop/cli/
tmux a
vim arch/x86/boot/compressed/kernel_info.S 
git log -p arch/x86/boot/compressed/kernel_info.S
tmuix a
tmu xa
tmux a
cat /boot/config-5.2.17-200.fc30.x86_64 
cat /boot/config-5.2.17-200.fc30.x86_64 | grep KEXEC
git status
tmux a
find . -name bzIamge
find . -name bzImage
find . -name bzImage | head -n 1
python
python3
man kexec
python3
man kexec
git grep KEXEC_FILE_LOAD
man kexec
vim tools/testing/selftests/kexec/test_kexec_file_load.sh
git grep FILE_LOAD
pwd
git grep KEXEC_
git grep KEXEC_FILE
ll
man kexec
git grep KEXEC_FILE
vim arch/x86/Kconfig
git grep KEXEC_CORE
vim arch/x86/Kconfig
man kexec
git grep kexec_loaded
vim kernel/ksysfs.c
ll /sys/kernel/
ll /sys/kernel/security/
ll /sys/kernel/security/lsm 
ll /sys/kernel/security/integrity/
git grep lsm
ll
vim kernel/ksysfs.c
git grep "security"
git grep \"security\"
vim security/inode.c
ll security/
vim security/inode.c
git grep securityfs
vim security/Kconfig
git grep SECURITYFS
ll /sys/
ll /sys/hypervisor/
git grep "hypervisor"
git grep \"hypervisor\"
vim drivers/base/hypervisor.c
vim drivers/base/hypervisor.c 
ll
vim  drivers/kvm/sys-hypervisor.c
find . -name sys-hypervisor.c
vim drivers/xen/sys-hypervisor.c 
git grep device_init_call
git grep device_initcall
git grep device_initcall | grep kvm
ll arch/x86
ll arch/x86/
ll arch/x86/xen/
ll arch/x86/kvm/
ll arch/x86/kernel/kvm.c
ll arch/x86/kernel/ksysfs.c 
vim arch/x86/kernel/ksysfs.c
find /sys/ -name bootparams
find /sys/ -name boot_params
ll /sys/kernel/boot_params
ll /sys/kernel/boot_params/version 
cat /sys/kernel/boot_params/version
cat /sys/kernel/boot_params/setup_data/
cat /sys/kernel/boot_params/setup_data/0/data 
xxd /sys/kernel/boot_params/setup_data/0/data 
ll /sys/kernel/boot_params/version 
ll arch/x86/kernel/ksysfs.c 
vim arch/x86/kernel/ksysfs.c
ll /sys/kernel/
vim arch/x86/kernel/ksysfs.c
git grep version_show
vim arch/x86/kernel/ksysfs.c
ll /sys/kernel/boot_params/data 
stat /sys/kernel/boot_params/data 
xxd /sys/kernel/boot_params/data 
less /sys/kernel/boot_params/data
git grep mpt3sas_print_coredump_info
less /sys/kernel/boot_params/data
stat /sys/kernel/boot_params/data
vim arch/x86/kernel/ksysfs.c
stat /sys/kernel/boot_params/data
ll
man readl
mean lread
mean read
man 2 read
man 2p read
man 2 pread
ll
vim arch/x86/kernel/ksysfs.c
stat /sys/kernel/boot_params/data
vim arch/x86/kernel/ksysfs.c
git grep loff_t
vim arch/x86/kernel/ksysfs.c
git diff
git checkout -- drivers/base/hypervisor.c kernel/kexec_file.c
git diff
ll /sys/kernel/boot_params/data 
ll /sys/kernel/boot_params/data
cd ..'
cd ..
vim test.c
python3
python3 -c 'import os; print(os.pread(open("/sys/kernel/boot_params/data"), 4096 * 2, 0))'
python3
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data"), 4096 * 2, 0))'
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096 * 2, 0))'
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, 0))'
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, -1))'
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, 1))'
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, 5))'
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, -1))'
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, 4))'
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), -1, 4))'
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 1, 4))'
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 1, 3))'
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 1, 0))'
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 200, 0))'
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, 0))'
strace python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, 0))'
strace
sudo dnf -y install strace
strace python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, 0))'
strace python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, 4))'
strace python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4098, 4))'
strace python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 0, 4))'
strace python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096 * 4, 4))'
strace python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096 * 4, 0))'
strace python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096 * 4, 4096))'
strace python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096 * 4, 4097))'
strace python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096 * 4, 0))'
strace python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, 0))'
strace python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4098, 4))'
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4098, 4))'
cd linux-combined/
git grep HdrS
vim Documentation/x86/boot.rst
git grep KVM_GUEST
vim arch/x86/kernel/cpu/hypervisor.c
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4098, 4))'
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, 4)[0x268])'
python3 -c 'import os; print(os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, 4)[0x264:0x268])'
python3 -c 'import os, struct; print(strcut.unpack("<l", os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, 4)[0x264:0x268]))'
python3 -c 'import os, struct; print(struct.unpack("<l", os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, 4)[0x264:0x268]))'
python3 -c 'import os, struct; print(hex(struct.unpack("<l", os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, 4)[0x264:0x268])))'
python3 -c 'import os, struct; print(hex(struct.unpack("<l", os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, 4)[0x264:0x268])[0]))'
python3
python3 -c 'import os, struct; print(hex(struct.unpack("<l", os.pread(os.open("/sys/kernel/boot_params/data", os.O_RDONLY), 4096, 4)[0x264:0x268])[0]))'
cd 
git add README.md 
git status
git commit -sm 'README: Narrow kexec .S files'
git push
ll
git status
vim ../README.md 
vim README.md 
git status
git log --walk-reflogs -p
cd linux-combined/
git log --walk-reflogs -p
git log -p
git log -p HEAD~2
git log -p HEAD~1
git status
git log nokexec
git cherry-pick 3234e303c1f870d3af963d38e2369da2de76a083
git config merge.renamelimit 10000
git reset --hard HEAD~1
git cherry-pick 3234e303c1f870d3af963d38e2369da2de76a083
git status
git log nokexec
git status
git log -p
vim ../README.md 
vim arch/x86/kvm/x86.c
git status
git diff
git c 'pr_infos on cr voloation'
git commit -asm 'pr_infos on cr voloation'
git push
git log -p
git rebase -i HEAD~3
git log -p
git log -p HEAD~2
git diff HEAD~1
git grep pr_info_
make -j $(($(nproc)*4)) bzImage
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
make -j $(($(nproc)*4))
time make -j $(($(nproc)*4))
vim .config
git grep kexec_load_disabled
ll
git status
git log -p
git status
git diff
~/test.sh kexec
vim .config
ll
vim ~/run.sh 
vim ~/run.
vim ~/run.s
echo bash | sudo tee ~/chroot/do
~/run.sh
git status
git diff
rm -rf ../outgoing/ && git format-patch HEAD~4 -o ../outgoing/
grep -rn ../outgoing/ -C 5 kexec
grep -rn -C 5 kexec ../outgoing/
grep -rn -C 5 kexec ../outgoing/ --color=always | less -r
git status
git diff
git status
git diff
vim target/i386/kvm.c
vim arch/x86/kernel/kvm.c
git status
git diff
git status
vim ../git-send-email-cover 
git status
git push -f
git log -p patch_v2_attemp_kexec 
git status
git log
git log --walk-reflogs -p
git log
cat Documentation/admin-guide/kernel-parameters.txt 
git log --stat
vim Documentation/virt/kvm/msr.rst
nc -lp 9999 < Documentation/virt/kvm/msr.rst
nc -lp 80 < Documentation/virt/kvm/msr.rst
nc -lp 8080 < Documentation/virt/kvm/msr.rst
cat Documentation/virt/kvm/msr.rst
vgrep native_write_cr0
vim -t of TRAMPOLINE_32BIT_CODE_SIZE 
vim -t TRAMPOLINE_32BIT_CODE_SIZE
git grep TRAMPOLINE_32BIT_CODE_SIZE
vim arch/x86/boot/compressed/head_64.S
git diff
git diff HEAD~1
vim arch/x86/boot/compressed/head_64.S
git diff HEAD~1
vim arch/x86/boot/compressed/head_64.S
git diff HEAD~1
vim arch/x86/kernel/head_64.S
git diff HEAD~1
vim arch/x86/kernel/relocate_kernel_64.S
git blame arch/x86/kernel/relocate_kernel_64.S
git log -p 5234f5eb04abb
vim arch/x86/kernel/relocate_kernel_64.S
git log -p 5234f5eb04abb -- arch/x86/kernel/relocate_kernel_64.S
git log -p 5234f5eb04abb
git log -n 1 -p 5234f5eb04abb
git status
git diff
git diff HEAD~1
git status
time make -j $(($(nproc)*4)) bzImage
~/test.sh kexec
git diff HEAD~1
time make -j $(($(nproc)*4)) bzImage
~/test.sh kexec
git diff HEAD~1
time make -j $(($(nproc)*4)) bzImage && ~/test.sh kexec
git diff HEAD~1
time make -j $(($(nproc)*4)) bzImage && ~/test.sh kexec
git status
git diff
git status
git stash
git log
git stash pop
git add arch/
git commit --amend
git diff --staged
git stash
git rebase -i HEAD~4
git rebase -i HEAD~5
git checkout -b patch_v2_kexec_working
git status
git rebase -i HEAD~5
git stash pop
git add Documentation/
git diff --staged
git status
git commit --amend
git rebase --continue
git status
git log -p
git push -u pdxjohnny 
vgrep _WP
vgrep _WP -s 1
vgrep -s 1
vgrep CR0_WP -s 1
vgrep CR0_WP
vgrep -s 5
git status
git checkout kvm/next
vgrep CR0_WP
vgrep -C 4 CR0_WP
git grep -C 4 CR0_WP
git grep -nC 4 CR0_WP
git blame arch/x86/kernel/relocate_kernel_64.S
git log -n 1 5bf30316991d5
git grep -nC 4 CR0_WP
git status
git diff
git grep -nC 4 CR0_WP
git blame arch/x86/realmode/rm/trampoline_64.S
git log -n 1 8e029fcdd8702
git log -n 1 8e029fcdd8702 -p
git log -p | grep -C 6 X86_CR0_WP
git log -n 1 8e029fcdd8702 -p
git blame arch/x86/realmode/rm/trampoline_64.S
git log -n 1 8e029fcdd8702 -p
git blame arch/x86/realmode/rm/trampoline_64.S
git grep -nC 4 CR0_WP
git log -n 1 8e029fcdd8702 -p
git grep -nC 4 CR0_WP
vim arch/x86/realmode/rm/trampoline_64.S 
vim arch/x86/realmode/rm/trampoline_32.S 
vim arch/x86/realmode/rm/trampoline_common.S 
vim arch/x86/realmode/rm/trampoline_64.S 
vim arch/x86/realmode/rm/trampoline_32.S 
git ls-files | grep trampoline_64.S
git grep -nC 4 CR0_WP
git grep -nC4 CR0_STATE
vim arch/x86/kernel/head_32.S
vim arch/x86/kernel/head_64.S
git grep lidt
git grep -w lidt
vim arch/x86/kernel/acpi/wakeup_32.S
vim arch/x86/kernel/acpi/wakeup_64.S 
git grep lidt
vim arch/x86/realmode/rm/trampoline_64.S
git diff
git log -n 1
git diff
vim arch/x86/realmode/rm/trampoline_64.S
git diff
git grep -w lidtl
git grep -w lidt
git blame arch/x86/realmode/rm/trampoline_64.S
git checkout patch_v2_kexec_working 
git log
git log -p
git blame arch/x86/kernel/relocate_kernel_64.S
git log -n 1 -p 5bf30316991d5
vim arch/x86/kernel/relocate_kernel_64.S
cat arch/x86/kernel/relocate_kernel_64.S
vim arch/x86/kernel/relocate_kernel_64.S
git diff
time make -j $(($(nproc)*4)) bzImage && ~/test.sh kexec
vim arch/x86/kernel/relocate_kernel_64.S
time make -j $(($(nproc)*4)) bzImage && ~/test.sh kexec
vim arch/x86/kernel/relocate_kernel_64.S
time make -j $(($(nproc)*4)) bzImage && ~/test.sh kexec
~/test.sh kexec
git status
git log -p
vim arch/x86/boot/compressed/head_64.S
git status
git add -A
git commit --amend --date="$(date)"
git log -p
vim arch/x86/kernel/head_64.S 
git add -A
git commit --amend --date="$(date)"
git log -p
git push -f
time make -j $(($(nproc)*4)) bzImage && ~/test.sh kexec
git tssatus
git log -p
git push
git checkout sql_op
git stauts
git status
git push -f
git log
git log -p
ll
vim Makefile 
git grep bzimage
git grep bzImage
vim Documentation/x86/boot.rst 
git grep kernel_info
vim arch/x86/boot/compressed/kernel_info.S
vim Documentation/x86/boot.rst
vim arch/x86/boot/compressed/kernel_info.S
vim ~/test.sh 
git grep bzImage
time make -j $(($(nproc)*4)) bzImage && ~/test.sh kexec
vim arch/x86/boot/compressed/kernel_info.S
time make -j $(($(nproc)*4)) bzImage && ~/test.sh kexec
vim ~/test.sh 
time make -j $(($(nproc)*4)) bzImage && ~/test.sh kexec
find . -name vmlinux
ll ../kexec-tools/
vim Documentation/x86/boot.rst
ps aux | grep git
kill 31330
tmux a
