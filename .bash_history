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
cd ~/linux-combined/
make install && make -j $(($(nproc)*4)) modules_install
sudo make install && sudo  make -j $(($(nproc)*4)) modules_install
ll /lib/modules
sudo rm -rf /lib/modules/5.9.0+/
sudo make install && sudo make -j $(($(nproc)*4)) modules_install
ll /lib/modules/
sudo mkdir /lib/modules/5.8.0+
sudo make install && sudo make -j $(($(nproc)*4)) modules_install
sudo grubby --help
sudo grubby --default-kernel
sudo grubby --default-kernel /boot/vmlinuz-5.8.0+
sudo grubby --set-default-kernel /boot/vmlinuz-5.8.0+
sudo grubby --set-default /boot/vmlinuz-5.8.0+
sudo grubby --default-kernel
sudo reboot
tmux a
vim arch/x86/boot/install.sh 
ll
cd ~/linux-combined/
git grep xfs
vim Documentation/admin-guide/xfs.rst 
make menuconfig
depmod 
depmod -h
sudo depmod -a
git status
sudo make install && sudo make -j $(($(nproc)*4)) modules_install
tmux a
tmu
tmux
cd linux-combined/
ll
ps au | grep make
sudo make install && sudo make -j $(($(nproc)*4)) modules_install
sudo make -j $(($(nproc)*4)) modules_install && sudo make install
sudo grubby --set-default /boot/vmlinuz-5.8.0+
sudo reboot
tmux
tmuokjjjjx
tmux a
tmux
dmesg 
tmux a
uname -a
ps aux
ps aux | grep ssh
kill 1255
ll
cd linux-combined/
ll
git log
git status
git log
git status
DO=do_kexec ~/run.sh
vim ~/run.sh
DO=do_kexec ~/run.sh
vim ~/chroot/usr/bin/init.sh 
DO=do_kexec ~/run.sh
vim ~/chroot/usr/bin/init.sh 
vim ~/chroot/usr/bin/uefi-setup.sh
sudo vim ~/chroot/usr/bin/uefi-setup.sh
DO=do_kexec ~/run.sh
sudo vim ~/chroot/usr/bin/uefi-setup.sh
DO=do_kexec ~/run.sh
DO=do_kexec ~/run.sh -no-reboot
vim ~/run.sh
DO=do_kexec ~/run.sh -no-reboot
DO=do_kexec ~/run.sh
vim ~/run.sh
vim ~/chroot/usr/bin/uefi-setup.sh
sudo vim ~/chroot/usr/bin/uefi-setup.sh
DO=do_kexec ~/run.sh -no-reboot
sudo vim ~/chroot/usr/bin/uefi-setup.sh
sudo vim ~/chroot/usr/bin/init.sh 
DO=do_kexec ~/run.sh -no-reboot
sudo vim ~/chroot/usr/bin/init.sh 
sudo vim ~/chroot/usr/bin/uefi-setup.sh
DO=do_kexec ~/run.sh -no-reboot
git status
git log
git status
vim arch/x86/kvm/x86.c
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
DO=do_kexec ~/run.sh -no-reboot
echo $?
vim ~/run.sh
DO=do_kexec ~/run.sh -no-reboot
vim ~/run.sh
DO=do_kexec ~/run.sh -no-reboot
sudo /home/johnsa1/qemu/build/x86_64-softmmu/qemu-system-x86_64 -no-reboot -smp cpus=2 -m 8192M -enable-kvm -bios /home/johnsa1/OVMF.fd -nographic -cpu host -drive file=/home/johnsa1/image.qcow2,index=0,media=disk,format=qcow2
ps aux | grep qemu
kill 14304
sudo 'kill 14304
sudo kill 14304
ps aux | grep qemu
sudo /home/johnsa1/qemu/build/x86_64-softmmu/qemu-system-x86_64 -no-reboot -smp cpus=2 -m 8192M -enable-kvm -bios /home/johnsa1/OVMF.fd -nographic -cpu host -drive file=/home/johnsa1/image.qcow2,index=0,media=disk,format=qcow2
echo $?
dmesg 
sudo reboot
uptime
tmux
passwd
tmux a
tmux
tmux a
tmux
sudo vim /etc/ssh/sshd_config 
cat ~/.ssh/authorized_keys 
sudo journalctl -u sshd
ll .ssh
stat .ssh
chmod 770 .ssh
stat .ssh
chmod 700 .ssh
stat .ssh
sudo journalctl -u sshd
sudo journalctl -u sshd -f
vim /etc/ssh/sshd_config
sudo vim /etc/.vimrc
sudo vim /root/.vimrc
vim /etc/ssh/sshd_config
sudo vim /etc/ssh/sshd_config 
git status
tmux a
tmux
env | grep -i proxy
vim ~/.bash_r
vim ~/.bash_profile 
sudo vim /etc/environment 
bash -x
bash -e
bash -x --help
man bash
sudo vim /etc/profile
sudo grep -rn no_proxy /etc/
ll
cd qemu
ll
git status
git fetch origin
vim ~/.gitconfig 
git config --system core gitproxy
git config --system core.gitproxy
git config --global core.gitproxy
git config --global core.proxy
vim .git/config 
vim /usr/bin/git-proxy 
sudo vim /usr/bin/git-proxy 
git fetch origin
git config
git config --get-all
git config --get-all proxy
git config --get-all \*proxy\*
git config --get-all core \*proxy\*
git config --get-all core.\*proxy\*
git config --get-all core.proxy
git config -l
git config --global -l
git config --system -l
cd ..
git config -l
cd /
git config -l
cd ~/qemu
git status
git fetch origin
strace git fetch origin
sudo vim /etc/environment 
strace git fetch origin
git fetch origin
env | grep -i proxy
tmux a
tmux
env | grep -i proxy
cd ~/qemu
git fetch origin
git branch
git checkout -b cr_pinning_fsgsbase
git rebase origin/master
git status
git diff
vim include/standard-headers/asm-x86/kvm_para.h
git status
git diff
git add -A
git diff --staged
git status
git reset HEAD slirp/
git reset HEAD slirp
git status
git checkout -- slirp/
git status
git diff --staged
git submodule update
git submodule sync
git status
git rebase --continue
git status
git log -p
git status
cd build/
../configure --target-list=x86_64-softmmu
cd ..
git push -u origin master 
git config -l
vim ~/.local/bin/git-proxy
git push -u origin master 
vim ~/.local/bin/git-proxy
strace git push -u origin master 
vim ~/.ssh/config 
strace git push -u origin master 
git status
cd ~/qemu/build/
ll
../configure --target-list=x86_64-softmmu
sudo eopkg it ninja
sudo dnf -y install ninja
sudo vim /etc/dnf/dnf.conf 
sudo dnf -y install ninja
sudo dnf -y install ninja-build
../configure --target-list=x86_64-softmmu
ninja --help
ll ~/.local/bin/ninja 
rm ~/.local/bin/ninja
ninja --help
sudo lsof | grep qcow2
exit 0
ss -tpln
sudo ss -tpln
git grep tbnet_alloc_rx
vim drivers/net/thunderbolt.c
git log -p
git rebase -i e53f8bd40e0bc0480d8a4f0634d9c13772a6fd45~1
git status
git diff
git commit -sam 'log on violation'
git rebase -i e53f8bd40e0bc0480d8a4f0634d9c13772a6fd45~1
git log --stat
vim arch/x86/boot/compressed/head_64.S arch/x86/kernel/head_64.S arch/x86/kernel/relocate_kernel_64.S
git status
git ad d-A
git add -A
git rebase --continue
vim ~/README.md 
gdb vmlinux
log -p
git log -p
git status
cd ..
git staus
git status
git diff
git add -A
git commit -sam 'bash history update'
git push
cd linux-combined/
git rebase -i ad017747fd461748c193acfa6cb0dac6ce5ba79a~1
vim arch/x86/kernel/setup.c
vim cr4_set_bits_and_update_boot
vim -t cr4_set_bits_and_update_boot
git diff
python
python3
vim -t cr4_set_bits_and_update_boot
git diff
git add -A
git rebase --continue
git log -p HEAD~5
git log -p HEAD~7
git log -p HEAD~10
git grep setup_fsgsbase
git grep fsgsbase
git grep -i fsgsbase
vim arch/x86/kernel/cpu/common.c
git diff
git stash
git rebase -i HEAD~10
git rebase -i HEAD~11
git stash pop
git diff
git add -A
git rebase --continue
git status
sudo vim ~/chroot/usr/bin/uefi-setup.sh
man fsck
sudo vim ~/chroot/usr/bin/uefi-setup.sh
dme
dmesg 
find . -name cr_pin_high.log
find ~ -name cr_pin_high.log
cat /home/johnsa1/kvm-unit-tests/logs/cr_pin_high.log
tmpd
sudo vim ~/chroot/usr/bin/uefi-setup.sh
sudo vim ~/chroot/usr/bin/init.sh 
dmesg 
ll
wget https://download.fedoraproject.org/pub/fedora/linux/releases/32/Server/x86_64/iso/Fedora-Server-dvd-x86_64-32-1.6.iso
cd ~/qemu
git grep -i hypercall
docker ps
docker pull fedora
df -h
ll
git ls-files
git ls-files | less
uname -r
ll /boot/
cd -
cd .
git log | grep smm_cr_ping
git log -p | grep smm_cr_pin
cd
git log -p | grep smm_cr_pin
git log -p | grep smm_cr_pin  | grep log
git log -p | grep smm_cr_pin | grep cat
git log -p | grep asmc
git log -p | grep asm
ll ~/linux-combined/tools/testing/selftests/kvm/
ll ~/linux-combined/tools/testing/selftests/kvm/x86_64/
ll ~/linux-combined/tools/testing/selftests/kvm/config 
cat ~/linux-combined/tools/testing/selftests/kvm/config
cat ~/linux-combined/tools/testing/selftests/kvm/Makefile 
grep -rn debug_regs .
grep -rn debug_regs /tmp/
vim /tmp/debug_regs 
git status
git log -p
vim ../README.md 
git grep __ro_after_init | grep =
vim ../README.md 
docker ps
weechat
sudo dnf -y install weechat
weechat
ll
systemctl status
ll /etc/default/
ll /etc/default/secure-tunnel@johnsa1-desk 
cat /etc/default/secure-tunnel@johnsa1-desk
