git log
git status
vim arch/x86/kernel/cpu/common.c
git diff
git c 'X86: Update mmu_cr4_features when when pinning'
git am ../outgoing/0002
git am ../outgoing/0003
vim ../outgoing/0003
git am --abort
git am ../outgoing/0003
vim arch/x86/kernel/cpu/common.c
git diff
git add -A
git commit --amend
git status
rm -rf ../outgoing/ && git format-patch -M kvm/next -o ../outgoing/
git rebase -i HEAD~3
git status
git rebase --continue
git status
git log -p
git status
git rebase -i HEAD~3
git apply
git status
git log
git log -p
git rebase --continue
git rebase -i HEAD~3
git log -p
git log
git status
git rebase -i HEAD~3
git log
git log -p HEAD~1
git status
git reset --hard HEAD~2
git status
git log
git am ../outgoing/*
git rebase -i HEAD~3
git apply
git log -p
git apply
git log -p
git checkout HEAD~1 -- arch/x86/kernel/cpu/common.c
vim arch/x86/kernel/cpu/common.c
git diff
git status
git add -A
git diff --staged
git status
git rebase --continue
git status
git log -p
git rebase -i HEAD~3
dmesg 
git rebase -i HEAD~3
git status
vim arch/x86/kernel/cpu/common.c
git rebase --continue
git add -A
git rebase --continue
rm -rf ../outgoing/ && git format-patch -M kvm/next -o ../outgoing/
git status
git push -f
git push -u origin -f hc_harden
vim -t cr4_set_bits_and_update_boot
git rebase -i HEAD~3
vim arch/x86/kernel/cpu/common.c
git diff
git add -A
git stastus
git status
git rebase --continue
git push -f
vim -t cr4_set_bits_and_update_boot
git grep CR4
git status
vim -t identify_secondary_cpu
objdump -D vmlinux | less
vim arch/x86/kvm/x86.c
dmesg 
vim -t identify_secondary_cpu
objdump -D vmlinux | less
tmux attaahc
tmux attach
sudo vim /etc/ssh/sshd_config 
sudo systemctl restart sshd
cd linux-combined/
vim -t identify_cpu
git grep identify_cpu
vim arch/x86/kernel/cpu/common.c
vim -t mmu_cr4_features
git grep mmu_cr4_features
vim arch/x86/kernel/setup.c
git status
git diff
git add arch/x86/kernel/setup.c
git commit -sm 'hotpllug bringup works, hibernate with multiple cpus does not'
git push
git grep 'Booting Node'
vim arch/x86/kernel/smpboot.c
git diff
vim -t hibernation_snapshot
git grep state_store
vim -t hibernation_snapshot
vim -t enable_nonboot_cpus
git grep enable_nonboot_cpus
git grep native_cpu_up
vim -t enable_nonboot_cpus
vim -t native_cpu_up
git diff 
vim arch/x86/kernel/smpboot.
vim arch/x86/kernel/smpboot.c
vim arch/x86/kvm/x86.c
git diff
git checkout -- arch/x86/kernel/smpboot.c
git diff
vim arch/x86/kvm/x86.c
git diff
git stash
git status
git log -p
git rebase -i HEAD~2
git rebase -i HEAD~4
git stash pop
git add -A
git rebase --continue
git push -f
git status
git log -p
vim kernel/power/hibernate.c
git log -p
git status
git log -p
git rebase -i HEAD~4
git apply
git add -A
git rebase --continue
git log -p
git log -p HEAD~3
git log -p HEAD~2
git grep cr4_set_bits_and_update_boot
vim arch/x86/mm/init.c
git grep nokalsr
git grep nokaslr
git status
git log
vim arch/x86/kernel/kvm.c
git grep nokaslr
vim Documentation/admin-guide/kernel-parameters.txt
git grep cmdline_find_option_bool
vim -t cmdline_find_option_bool
git grep cmdline
vim Documentation/admin-guide/kernel-parameters.txt
git dif
git diff
git add -A
git commit --amend
git push -f
ll scripts/
vim scripts/xz_wrap.sh
vim scripts/extract-vmlinux 
git status
tmux attach
git status
git diff
git add chroot/usr/bin/uefi-setup.sh 
git status
git commit -sm 'Add pv_cr_pin to cmdline'
git push
git diff
git status
git diff
cd linux-combined/
git log -p
rm -rf ../outgoing/ && git format-patch -M kvm/next -o ../outgoing/
cd ..
git status
git diff outgoing/
git add -f outgoing/0001-X86-Update-mmu_cr4_features-when-when-pinning.patch 
git status
git add outgoing/*
git add -f outgoing/*
git status
git diff --staged
git status
git log -p | CONFIG_
git log -p | grep CONFIG_
git log -p | grep if\.\*CONFIG_
git log -p | grep if\.\*(CONFIG_
git log -p | grep if\.\*\(CONFIG_
git grep config_enabled
git grep id_enabled
git grep is_enabled
git grep enabled
git log -p grep CONFIG
git log -p | grep CONFIG
git log -p | grep ifCONFIG
git log -p | grep 'if.*CONFIG'
git log -p | grep 'if.*PARAVIRT'
git log -p | grep 'if.*CR'
git grep IS_ENABLED
dmesg 
vim arch/x86/kernel/relocate_kernel_64.S
cd linux-combined/
git grep \.S
git grep \\.S
history | grep \\.S
git grep mmu_cr4_features
vim arch/x86/power/hibernate_asm_64.S
vim -t mmu_cr4_features
vim arch/x86/kernel/setup.c
git grep -p mmu_cr4_features
vim -t cr4_set_bits_and_update_boot
git grep -p cr4_set_bits_and_update_boot
vim arch/x86/kernel/setup.c
vim arch/x86/power/hibernate_asm_64.S
vim arch/x86/kernel/cpu/common.c
git status
git grep cmdline_find_option_bool
vim arch/x86/boot/main.c
git grep boot.h
git grep cmdline_find_option_bool
git grep boot.h arch/x86/mm/pti.c
git grep cmdline.h arch/x86/mm/pti.c
vim arch/x86/kernel/kvm.c
git grep cmdline_find_option_bool\(const
vim -t boot_command_line
vim arch/x86/kernel/fpu/init.c
git grep boot_command_line
git grep boot_command_line | grep extern
git grep boot_command_line | grep \\.h
vim arch/x86/kernel/kvm.c
git grep cmdline_find_option_bool
arch/x86/lib/cmdline.c
vim arch/x86/lib/cmdline.c
git status
git diff
git log -p
git commit --amend
git add -A
git commit --amend
git log -p
vim arch/x86/Kconfig
vim 
vim Documentation/admin-guide/kernel-parameters.txt
git status
git idff
git diff
git diff HEAD~1
git grep X86_CR0_WP
git diff
git add -A
git commit --amend
git grep kexec
vim kernel/kexec.c
git grep kexec_load_disabled
vim Documentation/admin-guide/sysctl/kernel.rst
vim kernel/kexec.c
git grep cmdline_find_option_bool
vim arch/x86/boot/main.c
git grep cmdline_find
git grep cmdline_
vim arch/x86/kernel/setup.c
git grep crashkernel
vim kernel/crash_core.c
git grep crashkernel
git grep arch/x86/kernel/setup.c
vim arch/x86/kernel/setup.c
git status
git diff
git log -p
vim arch/x86/kernel/setup.c
git diff
vim Documentation/admin-guide/kernel-parameters.txt
git grep elfcorehdr
git status
git diff
git add -A
git commit --amend
git push -f
git status
git grep elfcorehdr
vim kernel/crash_dump.c
vim fs/proc/vmcore.c
git grep -C 20 elfcorehdr | grep kexec
git grep -C 20 elfcorehdr | grep -C 40 kexec
git grep -C 20 elfcorehdr | grep -C 40 kexec | grep -C 20 elfcorehdr
git grep -C 20 elfcorehdr | grep -C 40 kexec | grep -C 20 -E 'elfcorehdr|kexec'
git grep -C 20 elfcorehdr | grep -C 40 kexec | grep -C 20 -E 'elfcorehdr|kexec' | less
git grep -C 20 elfcorehdr | grep -C 40 kexec | grep -C 20 -E 'elfcorehdr|kexec'
vim kernel/kexec.c
git grep kexec_load_disabled
vim arch/x86/kernel/kvm.c
vim kernel/kexec.c
git grep kexec_load_disabled
vim arch/x86/kernel/kvm.c
git status
git diff
git add -A
git commit --amend
git status
git push -f
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/compile.sh
chmod 755 ~/compile.sh
~/compile.sh
git status
~/run.sh
dmesg 
git status
git c 'asdf'
git push
git status
sudo reboot
cd linux-combined/
gdb ./vmlinux 
git grep kvm test/
ll
ll sound/
git status
git log
git commit --amend
git log
git log -p HEAD~3
git log -p HEAD~2
git rebase -i HEAD~2
git rebase -i HEAD~3
git push -f
git status
git rebase -i HEAD~3
git push -f
sudo time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
git grep 
sudo time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
dmesg 
git log -p
vim arch/x86/kernel/setup.c
git diff
git add -A
git commit --amend
git status
git push -f
git grep secondary_startup_64
git grep start_secondary
git grep start_secondary arch/x86/
vim arch/x86/kernel/smpboot.c
git grep smp_store_cpu_info
vim arch/x86/kernel/smpboot.c
vim arch/x86/kernel/kvm.c
vim kernel/kexec.c
vim arch/x86/boot/setup.c
vim arch/x86/boot/main.c
vim init/main.c
vim arch/x86/kernel/kvm.c
git log -p
vim arch/x86/include/asm/kvm_para.h
vim arch/x86/kernel/kvm.c
git status
git diff
vim arch/x86/kernel/kvm.c
git diff
git add -A
vim arch/x86/include/asm/kvm_para.h
git add -A
git grep kexec_load_disabled
vim arch/x86/kernel/kvm.c
git grep kexec_load_disabled
git status
git diff HEAD~1 | grep kexec.h
git diff HEAD~1 | grep -C 40 kexec.h
vim arch/x86/kernel/kvm.c
vim arch/x86/include/asm/kvm_para.h
git status
git add -A
git status
git diff --staged
git status
git diff --staged
git grep is_enabled
git grep config_enabled
git status
git diff
git add arch/x86/
git status
git add -f compile.sh 
git commit -sm 'add compile.sh'
cd linux-combined/
git grep 'ifdef.*&&'
git grep -E 'ifdef.*&&'
git grep kexec_load_disabled
vim kernel/sysctl.c
git grep KEXEC_CORE
git grep KEXEC
git grep __initdata
vim arch/x86/kernel/kvm.c
git add -A
git grep cmdline_find_option_bool
vim arch/x86/boot/main.c
vim arch/x86/kernel/setup.c
git grep init_hypervisor_platform
vim arch/x86/kernel/cpu/hypervisor.c
git grep init_platform
vim arch/x86/kernel/kvm.c
git diff
git status
git add arch/x86/
git status
git diff --staged
vim .config
make olddefconfig
vim .config
vim arch/x86/include/asm/kvm_para.h
vim arch/x86/kernel/kvm.c
git status
git add arch/x86/
git status
vim arch/x86/kernel/kvm.c
git grep IS_ENABLED
vim arch/x86/kernel/kvm.c
git grep __ro_after_init
vim arch/x86/kernel/kvm.c
dmesg | grep dead
sudo ~/qemu/scripts/qmp/qmp-shell -p -v /tmp/q
dmesg | grep dead
dmesg | grep 'Ya dead'
cd linux-combined/
objdump ~/linux-combined/vmlinux | less
objdump -F ~/linux-combined/vmlinux | less
objdump -D ~/linux-combined/vmlinux | less
dmesg | grep -E 'Ya dead|kvm:'
watch -n 0.2 -d sh -c dmesg | grep -E "Ya dead|kvm:"
watch -n 0.2 -d sh -c 'dmesg | grep -E "Ya dead|kvm:"'
cd outgoing/
mv 0001-KVM-X86-Add-CR-pin-MSRs.patch 0002
mv 0003-X86-Update-mmu_cr4_features-when-during-pinning.patch 0001
mv 0002-X86-Use-KVM-CR-pin-MSRs.patch 0003
vim 0001 
cat 0001
rm 0001
cd -
git status
git add outgoing/*
git add -f outgoing/*
git status
git add -A
git status
git c 'fix hibernate'
git log -p
cd linux-combined/
time make -j $(($(nproc)*4)) bzImage
~/run.sh
time make -j $(($(nproc)*4)) bzImage
~/run.sh
~/run.sh -no-reboot
~/run.sh
vim ~/run.sh
~/run.sh -qmp unix:/tmp/q,server,nowait
~/run.sh
~/run.sh -qmp unix:/tmp/q,server,nowait
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
~/run.sh -qmp unix:/tmp/q,server,nowait
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
~/run.sh -qmp unix:/tmp/q,server,nowait
vim ~/run.sh
~/run.sh
~/run.sh -no-reboot
time make -j $(($(nproc)*4)) bzImage
~/run.sh -no-reboot
time make -j $(($(nproc)*4)) bzImage
~/run.sh -no-reboot
time make -j $(($(nproc)*4)) bzImage
~/run.sh -no-reboot
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
~/run.sh -no-reboot
sudo vim /etc/ssh/sshd_config 
sudo systemctl restart sshd
tmux attach
tmux
cd kvm-unit-tests/
./configure 
make standalone
./x86-run x86/msr.flat 
make standalone -j $(($(nproc)*4))
./x86-run x86/msr.flat 
make standalone -j $(($(nproc)*4)) && ./x86-run x86/msr.flat 
make standalone -j $(($(nproc)*4)) && ./x86-run x86/cr_pin.flat 
nodemon
npm
sudo dnf -y install yarn
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
nodejs
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo -E bash -
curl --silent --location https://rpm.nodesource.com/setup_12.x | sudo -E bash -
sudo dnf -y install gcc-c++ make yarn
yarn global add nodemon
nodemon
yarn bin
ll /home/johnsa1/kvm-unit-tests/node_modules/.bin
yarn global bin
ll $(yarn global bin)
vim ~/.bashrc
cd ~/kvm-unit-tests/
nodemon
. ~/.bashrc 
nodemon
echo $PATH
vim ~/.bashrc
bash
. /etc/environment 
env
env | grep SHELL
bash 
echo $PATH
cd ~/kvm-unit-tests/
nodemon
echo $PATH
mv ~/.bashrc ~/.bash_profile
~/run.sh
cd linux-combined/
git status
git rebase -i HEAD~4
git log -p
git grep cmdline_find_option_bool
vim arch/x86/kernel/setup.c 
git sttus
git status
git push -f
rm -rf ../outgoing/ && git format-patch -M kvm/next -o ../outgoing/
cd ..
git add -f outgoing/*.patch
git status
git diff --staged
git status
git add -A
git status
git c 'cmdline flag'
git push
~/run.sh
vim ~/run.sh
~/run.sh
~/run.sh -qmp unix:/tmp/q,server,nowait
git stats
git status
git diff
cd kvm-unit-tests/
ll
git status
git pull
git status
vim x86/smap.c
vim x86/msr.c
git status
git checkout -b cr_pin_msr
git add -A
git status
git grep msr.c
git grep msr.o
git grep msr.flat
vim x86/Makefile.common
cp x86/msr.c x86/cr_pin.c
git status
git checkout -- x86/cr_pin.c
git checkout -- x86/msr.c
git status
git reset HEAD x86/msr.c
git status
git checkout -- x86/cr_pin.c
git checkout -- x86/msr.c
git status
git add -A
git status
git checkout -b cr_pin
git status
git remote add pdxjohnny git@github.com:pdxjohnny/kvm-unit-tests
git remote -v
git push -u pdxjohnny
vim x86/cr_pin.c
cd linux-combined/
vim .config
./scripts/ver_linux 
tmux attach
cd kvm-unit-tests/
find . -name msr.h
vim $(find . -name msr.h)
ll $(find . -name msr.h)
vim $(find . -name msr.h)
cd ../linux-combined/
git log -p -n 3 | grep KVM_
git log -p -n 3 | grep MSR
cd ../kvm-unit-tests/
git grep CR4
vim x86/cr_pin.c
git grep KVM_
git grep kvm_clock
vim x86/kvmclock_test.c
vim x86/kvmclock.c
vim x86/kvmclock.h
git grep -i parav
git grep -i para
git grep -i pv
vim x86/cr_pin.c
vim x86/hypercall.c
vim x86/kvmclock_test.c
git grep smp_init
vim lib/x86/smp.c
git grep smp_init
vim x86/kvmclock_test.c
vim lib/x86/smp.c
ctags -R *
vim -t setup_idt
git grep write_cr4_checking
vim x86/cr_pin.c
vim -t setup_vm
git grep setup_idt
vim x86/cr_pin.c
git grep write_cr4_checking
git grep -p write_cr4_checking
vim x86/pcid.c
vim lib/x86/desc.c
vim lib/x86/desc.h
git status
echo tags >> .git/ignore 
git status
echo tags >> .git/gitignore 
git status
echo tags >> .git/.gitignore 
git status
ll ~/.gitignore 
git config --global core.excludesfile ~/.gitignore_global
vim ~/.gitignore_global
git status
git add -A
git status
git diff --staged
git status
vim x86/pcid.c
vim x86/cr_pin.c
vim x86/pcid.c
vim x86/cr_pin.c
git grep wrmsr_checking
git grep wrmsr
dmesg 
vim x86/cr_pin.c
git grep X86_CR0_WP
git grep X86_CR4
vim x86/cr_pin.c
git grep -i umip
vim x86/unittests.cfg 
vim x86/cr_pin.c
vim x86/umip.c
vim x86/cr_pin.c
vim x86/umip.c
vim x86/cr_pin.c
vim x86/umip.c
vim x86/cr_pin.c
vim x86/umip.c
git grep X86_FEATURE_SMAP
vim x86/smap.c
vim x86/umip.c
vim x86/cr_pin.c
vim x86/umip.c
vim x86/cr_pin.c
tmux attach
tmux attach
curl 'https://apims.kaiserpermanente.org/kp/care/di-microservices/di-bff-self-registration/v1/user' -H 'Connection: keep-alive' -H 'Pragma: no-cache' -H 'Cache-Control: no-cache' -H 'x-firstname: John' -H 'X-IBM-client-Id: d3be9564-d33f-4235-83c8-4349ea78b151' -H 'X-appName: self-registration' -H 'x-dob: 02/21/1997' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36' -H 'X-env: ' -H 'Content-Type: application/json' -H 'Accept: application/json, text/plain, */*' -H 'x-region: KNW' -H 'x-mrn: 102211718' -H 'X-User-Role: MBR' -H 'x-lastName: Andersen' -H 'DNT: 1' -H 'Origin: https://healthy.kaiserpermanente.org' -H 'Sec-Fetch-Site: same-site' -H 'Sec-Fetch-Mode: cors' -H 'Referer: https://healthy.kaiserpermanente.org/register/member-registration' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-US,en;q=0.9' -H 'Cookie: KPSessionId=119ce1df1307152533aea5f4dd90e372536d73803350187e4cf; S=1; kpLanguage=en-US; rxVisitor=15798233440281BMIVO9P9Q4037H5NTPNTJ5K1CC3Q2I6; check=true; AMCVS_9644AD4E5628B1ED7F000101%40AdobeOrg=1; AMCV_9644AD4E5628B1ED7F000101%40AdobeOrg=-1712354808%7CMCIDTS%7C18285%7CMCMID%7C02858741508825541134171977310090493840%7CMCAAMLH-1580428144%7C9%7CMCAAMB-1580428144%7CRKhpRz8krg2tLO6pguXWp5olkAcUniQYPHaMWWgdJ3xzPWQmdj0y%7CMCOPTOUT-1579830544s%7CNONE%7CvVersion%7C4.3.0; KP_SESSION_REGION=NAT; s_cc=true; WT_FPC=id=dfd443f4-6da5-49a3-a0dd-d33ceebc9ad4:lv=1579823797858:ss=1579823345898; dtSa=-; mbox=session#c4426a2aff6c4489bc25e3ed6832f005#1579825821|PC#c4426a2aff6c4489bc25e3ed6832f005.28_0#1643068146; dtPC=30$23960589_636h-vFMCJBCGKBMFDICODBULCANJDEODFEXMB; dtCookie=30$4950905A585113C48D913AE367203F43|114cf834d5fbf36b|1|de3cc81e9e0783a6|1; rxvt=1579825783299|1579823344030; dtLatC=1' --compressed
sudo ~/qemu/scripts/qmp/qmp-shell -p -v /tmp/q
cd kvm-unit-tests/
gi tatus
vim README.md
git pull
vim README.md
ll
git grep umip
vim x86/unittests.cfg
git grep extra_params
vim scripts/runtime.bash
vim scripts/common.bash
vim x86/run
vim scripts/common.bash
git grep for_each_unittest
vim README
dmesg
dmesg 
git grep write_cr4
vim x86/smap.c
git status
cd kvm-unit-tests/
git clean -ndf
git clean -ndx
ll logs/
vim logs/msr.log 
git grep accel
vim x86/run
dmesg 
vim x86/run
git status
git diff
git add -A
uname -a
git status
git add -A
git status
git c 'in progress on cr_pin'
git push
vim x86/cr_pin.c
ctags -R * .
vim -t init_test
vim x86/cr_pin.c
vim x86/smap.c
vim x86/cr_pin.c
git diff
git status
git add -A
git status
git commit --amend
git log
vim .gitlab-ci.yml 
git status
git push -f
git fetch origin
git format-patch HEAD~1
cp 0001-Add-cr-pinning-test.patch ../
git status
rm 0001-Add-cr-pinning-test.patch 
git reset --hard origin/master
git am ../0001-Add-cr-pinning-test.patch
git status
git log
git grep selftest
git log
git commit --amend
git log
git commit --amend
git push -f
git status
git log -p
git status
git grep smm
git grep -i smm
vim x86/cr_pin.c
git grep -i smm
cd linux-combined/
ll
vim arch/x86/kvm/x86.c
git status
git stash
git rebase -i HEAD~2
git stash pop
git diff
git add -A
git status
git rebase --continue
git status
git push -f
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
~/run.sh
git log -p HEAD~2 -n 1
git log -p HEAD~1 -n 1
git status
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
dmesg 
rs
dmesg 
vim ~/run.sh 
RELOAD=1 ~/run.sh
dmesg 
git grep CR_PIN
vim arch/x86/kvm/cpuid.c
git grep X86_FEATURE_SMAP
git grep X86_FEATURE_SMEP
vim arch/x86/kvm/cpuid.c
git grep bit
git grep \#define bit
git grep \#define\ bit
python3
vim arch/x86/kvm/vmx/vmx.c
vim arch/x86/kvm/vmx/ops.h
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
RELOAD=1 ~/run.sh
dme
dmesg 
dmesg
dmesg 
git grep X86_FEATURE_ARCH_CAPABILITIES
vim arch/x86/include/asm/cpufeatures.h
git grep INVPCID_SINGLE
vim arch/x86/include/asm/cpufeatures.h
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
RELOAD=1 ~/run.sh
vim arch/x86/kvm/x86.c
git diff
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
RELOAD=1 ~/run.sh
git status
dmesg 
git status
git log
git status
git diff
git reset --hard HEAD
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
git log -p
git commit --amend
git push -f
sudo /home/johnsa1/chroot/usr/bin
ll /home/johnsa1/chroot/usr/bin
ll /home/johnsa1/chroot/
~/run.sh 
git log -n 3
git log -n 3 | grep -i patch
git commit --amend
git push -f
git status
tmux attach
cd ~/kvm-unit-tests/
nodemon
nodemon -e c,h --exec 'clear; make standalone -j $(($(nproc)*4)) && ./x86-run x86/cr_pin.flat; test 1'
nodemon -e c,h --exec 'clear; make x86/cr_pin.flat -j $(($(nproc)*4)) && ./x86-run x86/cr_pin.flat; test 1'
nodemon -e c,h --exec 'clear; make x86/cr_pin.flat -j $(($(nproc)*4)) && QEMU=~/qemu/x86_64-softmmu/qemu-system-x86_64 ./x86-run x86/cr_pin.flat; test 1'
nodemon -e c,h --exec 'clear; make x86/cr_pin.flat -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./x86-run x86/cr_pin.flat; test 1'
nodemon -e c,h --exec 'clear; make x86/cr_pin.flat -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./x86-run x86/cr_pin.flat; test 1'
dmesg 
nodemon -e c,h --exec 'clear; make x86/cr_pin.flat -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./x86-run x86/cr_pin.flat; test 1'
dmesg 
git config format.subjectprefix 'kvm-unit-tests PATCH'
cat .git/config 
git config diff.orderFile scripts/git.difforder
nodemon -e c,h --exec 'clear; make x86/cr_pin.flat -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./x86-run x86/cr_pin.flat; test 1'
nodemon -e c,h --exec 'clear; make standalone -j $(($(nproc)*4)) && ./x86-run x86/cr_pin.flat; test 1'
QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./x86-run x86/umip.flat
nodemon -e c,h --exec 'clear; make x86/cr_pin.flat -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./x86-run x86/cr_pin.flat; test 1'
git status
git diff
git clean -xdf
nodemon -e c,h --exec 'clear; make x86/cr_pin.flat -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./x86-run x86/cr_pin.flat; test 1'
./configure 
nodemon -e c,h --exec 'clear; make x86/cr_pin.flat -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./x86-run x86/cr_pin.flat; test 1'
nodemon -e c,h --exec 'clear; make x86/umip.flat -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./x86-run x86/umip.flat; test 1'
nodemon -e c,h --exec 'clear; make standalone -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./x86-run x86/cr_pin.flat; test 1'
nodemon -e c,h --exec 'clear; make standalone -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./x86/cr_pin; test 1'
nodemon -e c,h --exec 'clear; make standalone -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./tests/cr_pin; test 1'
clear; make standalone -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./tests/cr_pin
man timeout
clear; make standalone -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./tests/cr_pin
nodemon -e c,h --exec 'clear; make standalone -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./tests/cr_pin; test 1'
clear; make standalone -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./tests/cr_pin
nodemon -e c --exec 'clear; make standalone -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./tests/cr_pin; test 1'
clear; make standalone -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./tests/cr_pin
git status
cd ../linux-combined/
git status
git log -p
git status
cd ..
cd linux-combined/
rm -rf ../outgoing/ && git format-patch -M kvm/next -o ../outgoing/
cd ..
git status
git diff
git status
git diff
git status
git c 'allow guest reads of pinned msrs'
git push
sudo ~/chroot/usr/bin/hibernate 
git status
cd linux-combined/
ll
ll tools/testing/selftests/kvm
git grep -i smm tools/testing/selftests/kvm
vim tools/testing/selftests/kvm/x86_64/smm_test.c
clear; make standalone -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./tests/cr_pin
cd ../kvm-unit-tests/
clear; make standalone -j $(($(nproc)*4)) && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ACCEL=kvm ./tests/cr_pin
git status
git diff
git add -A
git commit --ammend
git commit --amend
git push -f
git log -n 3
git log -n 3 | grep patch
git log -n 3 | grep -i patch
git log -n 3
vim tools/testing/selftests/kvm/x86_64/smm_test.c
cd ~/linux-combined/
vim tools/testing/selftests/kvm/x86_64/smm_test.c
cd tools/testing/selftests/kvm/x86_64/smm_test.c
cd tools/testing/selftests/kvm/x86_64/
ll
cd ..
ll
make
ll
make check
ll
ll x86_64/
./x86_64/smm_test 
git status
make TARGETS="kvm" kselftest
cd ~/linux-combined/
make TARGETS="kvm" kselftest
make TARGETS="kvm" summary=1 kselftest
sudo make TARGETS="kvm" summary=1 kselftest
git statu
cd tools/testing/selftests/kvm/x86_64/
cd ..
ll
./x86_64/smm_test 
echo $?
vim x86_64/smm_test.c
git grep processor.c
vim lib/x86_64/processor.c
git grep kvm_msrs
(cd ~/linux-combined && git grep kvm_msrs)
vim tools/arch/x86/include/uapi/asm/kvm.h
vim ~/linux-combined/tools/arch/x86/include/uapi/asm/kvm.h
vim lib/x86_64/processor.c
vim x86_64/smm_test.c
vim lib/x86_64/processor.c
git status
git log
git push -f
git checkout linux/next
git checkout kvm/next
cd ~/linux-combined/
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
sudo reboot
uname -a
ll
tmux attach
tmux
git status
git diff
git status
git log
git status
git diff origin/master 
git diff outgoing/
cd linux-combined/
sudo make TARGETS="kvm" summary=1 kselftest
git status
git checkout hc_harden
rm -rf ../outgoing/ && git format-patch -M kvm/next -o ../outgoing/
git checkout kvm/next
git pull
git log
git fetch kvm
git pull kvm/next
git pull kvm next
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
make olddefconfig
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
sudo reboot
cd linux-combined/
sudo make TARGETS="kvm" summary=1 kselftest
cd tools/testing/selftests/kvm/
ll
cp x86_64/smm_test.c x86_64/smm_cr_pin.c
ll
git grep smm_test
ll
ll x86_64/
mv x86_64/smm_cr_pin.c x86_64/smm_cr_pin_test.c
vim Makefile 
git status
git diff
rm ../../../../scripts/pnmtologo
git add -A
git status
git log
git stash
git am ~/outgoing/*.patch
git status
tmux attach
tmux
cd ~/linux-combined/
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install && sudo reboot
cd ~/linux-combined/
sudo make TARGETS="kvm" summary=1 kselftest
git status
uname -a
cd tools/testing/selftests/kvm/
./x86_64/smm_test 
vim lib/x86_64/processor.c
tmux attach
tmux
