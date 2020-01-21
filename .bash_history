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
cd linux-combined/
git grep -C 5 mmu_cr4_features
git grep -C 5 cr4_set_bits_and_update_boot
git status
git log
git grep -C 5 cr4_set_bits_and_update_boot
vim arch/x86/mm/init.c-
vim arch/x86/mm/init.c
git grep FEATURE_UMIP
git grep CR4_UMIP
vim arch/x86/kernel/cpu/common.c
git diff
vim -t setup_cr_pinning
git status
git diff
git add -A
git commit --amend
git status
cd ..
cd 
git status
git add outgoing/*
git status
git diff --staged
git commit -sm 'Use cr4_set_bits_and_update_boot instaed of writing to mmu_cr4_features'
git push
vim -t cr4_set_bits_and_update_boot
dmesg 
git log | grep qmp
git log -p | grep qmp
sudo ~/qemu/scripts/qmp/qmp-shell -p -v /tmp/q
addr2line
sudo ~/qemu/scripts/qmp/qmp-shell -p -v /tmp/q
addr2line -e ~/linux-combined/vmlinux f8f7acec27ce78d7
addr2line -e ~/linux-combined/vmlinux 0xf8f7acec27ce78d7
addr2line -e ~/linux-combined/vmlinux 0010:identify_cpu+0x4f5/0x6c0
addr2line -h
sudo ~/qemu/scripts/qmp/qmp-shell -p -v /tmp/q
vim ~/run.sh
python3 -c 'print(hex(0xffffffff8103c1a0U + 0x47eU))'
python3 -c 'print(hex(0x00ffffffff8103c1a0U + 0x0047e))'
python3 -c 'print(hex(0x00ffffffff8103c1a0 + 0x0047e))'
dmesg 
cd linux-combined/
vim arch/x86/kernel/kvm.c
git grep smp_
vim arch/x86/kernel/kvm.c
time make -j $(($(nproc)*4)) bzImage
~/run.sh
~/run.sh 2>&1 | grep -i pin
git log -p
vim .config
time make -j $(($(nproc)*4)) bzImage
~/run.sh 2>&1 | grep -i pin
~/run.sh -monitor unix:/tmp/monitor,server,nowait 2>&1 | grep -i pin
~/run.sh -qmp unix:/tmp/monitor,server,nowait 2>&1 | grep -i pin
vim ~/run.sh
~/run.sh -qmp unix:/tmp/monitor,server,nowait
~/run.sh -qmp unix:/tmp/q,server,nowait
~/run.sh -qmp unix:/tmp/q,server,nowait -device host-x86_64-cpu,socket-id=1,core-id=0,thread-id=0,id=cpu4,hotplugged=on
vim ~/run.sh
~/run.sh -qmp unix:/tmp/q,server,nowait -device host-x86_64-cpu,socket-id=1,core-id=0,thread-id=0,id=cpu4,hotplugged=on
vim ~/run.sh
git diff
vim ~/run.sh 
~/run.sh -qmp unix:/tmp/q,server,nowait
git status
git diff
git reset --hard HEAD
cd ../
git status
git diff
git c 'confimed hotplug working'
git push
cd linux-combined/
vim .config
time make -j $(($(nproc)*4)) bzImage
vim -t kvm_vcpu_reinit
git grep kvm_vcpu_reinit
git grep kvm_vcpu_init
git grep kvm_vcpu_reset
uname -a
~/run.sh
find . -name vfat.ko
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
find . -name vfat.ko
find fd -name \*.ko
find fs -name \*.ko
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
cat ~/chroot/usr/bin/uefi-setup.sh
echo /usr/sbin/efibootmgr --disk /dev/sda --part 1 --create --label "Fedora Linux" --loader /bzImage.efi --unicode 'console=ttyS0 resume=/dev/sda2 root=/dev/sda3 rw nokaslr init=/usr/bin/init.sh'
vim ~/chroot/usr/bin/uefi-setup.sh
sudo vim ~/chroot/usr/bin/uefi-setup.sh
git add ~/chroot/usr/bin/uefi-setup.sh
git status
cd ..
git status
git diff
git add -A
git status
git diff --staged
git c 'add resume to cmdline'
git push
git tag rfc
git push --tags
git add -f git-send-email-cover 
git status
cd linux-combined/
~/run.sh
vim ~/run.sh
vim arch/x86/kvm/x86.c
git diff
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
vim arch/x86/kvm/x86.c
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
~/run.sh
time make -j $(($(nproc)*4)) bzImage
~/run.sh
time make -j $(($(nproc)*4)) bzImage
~/run.sh
time make -j $(($(nproc)*4)) bzImage
~/run.sh
time make -j $(($(nproc)*4)) bzImage
~/run.sh
~/run.sh -S
~/run.sh
~/run.sh -S
~/run.sh -S -s
time make -j $(($(nproc)*4)) bzImage
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
git grep irq_bypass_register_consumer
make -j $(($(nproc)*4)) M=virt/lib/ modules
git grep irq_bypass_register_consumer
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
vim scripts/Makefile.modpost
ll arch/x86/kvm//kvm.ko
git grep Module.symvers
find . -name Module.symvers
vim Module.symvers
git grep Module.symvers
git grep irq_bypass_register_consumer
vim virt/lib/Module.symvers 
cat virt/lib/Module.symvers >> Module.symvers 
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
make -j $(($(nproc)*4))
sudo make -j $(($(nproc)*4)) modules_install && sudo make install
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules
sudo time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
~/run.sh 
~/run.sh -S -s
~/run.sh 
~/run.sh -no-reboot -S -s
~/run.sh 
~/run.sh -no-reboot -S -s
~/run.sh 
~/run.sh -no-reboot -S -s
~/run.sh 
sudo time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
~/run.sh 
sudo time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
~/run.sh 
~/run.sh -no-reboot -S -s
~/run.sh 
git status
git diff
git log -p
git commit --amend
git status
git add -A
git commit --amend
git status
git log -p
git checkout HEAD~1 -- arch/x86/boot/compressed/head_64.S
git commit --amend
git log -p
git checkout HEAD~1 -- arch/x86/kernel/head_64.S arch/x86/kernel/relocate_kernel_64.S
git commit --amend
git log -p
rm -rf ../outgoing/ && git format-patch -M upstream/master -o ../outgoing/
git log
rm -rf ../outgoing/ && git format-patch -M kvm/next -o ../outgoing/
git reset --hard HEAD~3
git am ../outgoing/*
git am --show-current-patch 
git status
git am --abort
git status
git branch -D hc_harden
git checkout -b hc_harden
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
