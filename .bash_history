vim -t rdmsr
vim -t kvm_emulate_hypercall
git grep wrmsrl_safe
vim arch/x86/kvm/x86.c
git grep kvm_set_shared_msr
vim arch/x86/kvm/vmx/vmx.c
git grep kvm_set_shared_msr
vim -t kvm_emulate_hypercall
make arch/x86/kvm/
vim -t rdmsrl
vim -t kvm_emulate_hypercall
make arch/x86/kvm/
ll arch/x86/kvm/
sudo rmmod kvm kvm-intel
sudo rmmod kvm-intel
sudo rmmod -f kvm-intel
sudo make modules_install
sudo reboot
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic
sudo journalctl --demg
sudo journalctl --dmesg
tmux
cd linux
vim -t kvm_emulate_hypercall
vim -t MSR_IA32_VMX_CR4_FIXED0
git grep MSR_IA32_VMX_BASIC
vim tools/testing/selftests/kvm/include/x86_64/vmx.h
git grep vmcs_revision
ll jdump -D /usr/lib/modules/5.3.0+/kernel/arch/x86/kvm/kvm.ko
ll /usr/lib/modules/5.3.0+/kernel/arch/x86/kvm/kvm.ko
ll /usr/lib/modules/5.3.0+/kernel/arch/x86/kvm/kvm-intel.ko 
sudo make modules_install
ll /usr/lib/modules/5.3.0+/kernel/arch/x86/kvm/kvm-intel.ko 
ll /usr/lib/modules/5.3.0+/kernel/arch/x86/kvm/kvm.ko
sudo reboot
vim -t kvm_arch_vcpu_ioctl_run
cd linux
vim -t kvm_arch_vcpu_ioctl_run
vim -t kvm_emulate_hypercall
vim -t kvm_arch_vcpu_ioctl_ru
vim -t kvm_emulate_hypercall
vim -t kvm_x86_ops
vim -t msr_data
vim -t kvm_emulate_hypercall
git grep get_msr_feature
vim -t kvm_emulate_hypercall
vim -t msr_data
vim -t kvm_emulate_hypercall
git grep MSR_IA32_VMX_BASIC
vim arch/x86/kvm/x86.c
git grep get_msr
vim -t kvm_get_msr_common
git grep kvm_get_msr_common
vim arch/x86/kvm/vmx/vmx.c
vim -t kvm_get_msr_common
vim -t kvm_emulate_hypercall
git diff
vim -t kvm_get_msr_common
make arch/x86/kvm/ && sudo make modules_install
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic
sudo journalctl --dmesg
uname -a
sudo modprobe kvm
sudo modprobe kvm-intel
tmux
sudo reboot
sudo vim /etc/modprobe.d/blacklist
cd linux
vim -t kvm_emulate_hypercall
make arch/x86/kvm/ && sudo make modules_install
sudo make install
tmux attach
tmux
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic
sudo journalctl --dmesg
sudo reboot
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic
sudo journalctl --dmesg
cd linux
vim -t kvm_emulate_hypercall
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install
sudo reboot
tmux
uname -a
sudo modprobe kvm-intel
sudo modprobe kvm
dmesg 
dmesg | grep -i kvm
dmesg | grep -i kvm | grep -v 'Modules linked in'
dmesg | grep -v 'Modules linked in' | grep -C 10 -i kvm
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic
dmesg | grep -v 'Modules linked in' | grep -C 10 -i kvm
dmesg | less
man blacklist.conf
man blacklist
man modprobe.d
sudo mv /etc/modprobe.d/blacklist /etc/modprobe.d/blacklist.conf
sudo reboot
tmux
uname -a
ll
dmesg | less
sudo journalctl --dmesg
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic
sudo journalctl --dmesg
cd linux
vim -t kvm_emulate_hypercall
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install
sudo reboot
cd ../linux-kvm/
git remote add pdxjohnny git@github.com:pdxjohnny/linux
tmux attach
cd ../linux-kvm/
git status
git diff
git checkout -- arch/x86/kvm/x86.c
git status
git diff
git checkout -b protect_cr4_guest
git add -A
git status
git c 'Making hypercall'
git push -u pdxjohnny
git push -d protect_cr4
git push -d pdxjohnny protect_cr4
sudo journalctl --dmesg
cd ../
vim -t kvm_emulate_hypercall
cd linux
vim -t kvm_emulate_hypercall
git grep \.set_msr
git grep \\.set_msr
vim arch/x86/kvm/vmx/vmx.c
git diff
vim arch/x86/kvm/vmx/vmx.c
vim arch/x86/kvm/vmx/pmu_intel.c
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/svm.c
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install
sudo vim /etc/default/grub 
vim Makefile 
cat /boot/
cat /boot/loader/entries/
sudo ls -lAD /boot/loader/entries/
sudo ls -lAF /boot/loader/entries/
sudo ls -lAF /boot/grub2/
sudo ls -lAF /boot/
sudo ls -lAF /boot/efi
sudo ls -lAF /boot/efi/EFI
sudo ls -lAF /boot/efi/EFI/fedora/
sudo ls -lAF /boot/efi/EFI/fedora/grubenv
cat /boot/efi/EFI/fedora/grubenv
sudo cat /boot/efi/EFI/fedora/grubenv
sudo cat /boot/efi/EFI/fedora/grub.cfg
ll /etc/grub.d/
sudo ls -lAF /etc/grub.d/
sudo ls -lAF /etc/grub.d/README
cat /etc/grub.d/README
sudo cat /etc/grub.d/README
sudo cat /etc/grub.d/00*
sudo cat /etc/grub.d/
sudo ls -lAF /etc/grub.d/README
sudo ls -lAF /etc/grub.d/
sudo vim /etc/grub.d/10_linux
sudo reboot
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic
sudo journalctl --dmesg
cd linux
vim -t kvm_emulate_hypercall
vim -t srcu_read_lock
git grep srcu_read_lock
vim Documentation/RCU/whatisRCU.txt
vim -t kvm_emulate_hypercall
git status
git diff
git status
git checkout -b protect_cr4_host
git add -A
git status
git c 'workong on hypercall, failing to set FIXED0 msr'
git push
git remote -b
git remote -v
git remote add pdxjohnny git@github.com:pdxjohnny/linux
git push -u pdxjohnny
git-proxy 
vim ~/.local/bin/git-proxy 
git-proxy 
git remote add pdxjohnny git@github.com:pdxjohnny/linux
git push -u pdxjohnny
vim ~/.ssh/config
ll ~/.ssh
ll ~/.ssh/.ssh/
mv ~/.ssh/.ssh/config ~/.ssh/
vim ~/.ssh/config
mv ~/.ssh/.ssh/ /tmp/ssh
rm -rf ~/.ssh/
mv /tmp/ssh/ ~/.ssh
git push -u pdxjohnny
vim ~/.ssh/config
ll ~/.ssh/
git push -u pdxjohnny
vim ~/.local/bin/git-proxy 
vim ~/.ssh/config 
git push -u pdxjohnny
tmux
tmux attach
tmux
sudo reboot
sudo systemctl status secure-tunnel@johnsa1-desk.service
sudo journalctl -xe -u secure-tunnel@johnsa1-desk | tail -n 50
ssh desk
cat ~/.ssh/config 
vim ~/.ssh/config
ssh desk
sudo journalctl -xe -u secure-tunnel@johnsa1-desk | tail -n 50
cd linux
vim -t kvm_emulate_hypercall
git add arch/x86/kvm/x86.c
git c 'correct get_msr calls'
git log
git status
git checkout HEAD~1 -- arch/x86/kvm/vmx/vmx.c arch/x86/kvm/vmx/pmu_intel.c arch/x86/kvm/pmu.c
git log
git status
git diff --staged
git commit --amend
git status
git push
vim -t kvm_emulate_hypercall
vim -t vmx_get_msr
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install
sudo reboot
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic
sudo journalctl --dmesg
cd linux
vim -t vmx_get_msr
git diff
git log -p
tmux
ll
cd linux-kvm/
ll
cd ../linux
ll
vim -t vmx_get_msr
vim -t kvm_emulate_hypercall
vim -t vmx_get_msr
vim -t vmcs_write
git grep vmcs
git status
git diff
git c 'nested check'
git push
vim -t set_cr4_guest_host_mask
vim arch/x86/kvm/vmx/nested.c
cd linux
vim arch/x86/kvm/vmx/nested.c
cd linux
git grep MSR_IA32_VMX_CR4_FIXED0
vim arch/x86/kvm/vmx/nested.c
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic
sudo journalctl --dmesg
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host
sudo journalctl --dmesg
cd linux
git grep CR4_GUEST_HOST_MASK,
git grep CR4_GUEST_HOST_MASK
vim -t set_cr4_guest_host_mask
cd linux
vim -t set_cr4_guest_host_mask
git grep cr4_read_shadow
vim arch/x86/kvm/vmx/vmcs_shadow_fields.h
vim -t set_cr4_guest_host_mask
vim -t intr_te
git grep intr_te
vim -t pt_buffer
git grep pt_buffer
vim arch/x86/events/intel/pt.c
vim -t set_cr4_guest_host_mask
git status
git log -p
git checkout -b fixed0
git push -u pdxjohnny
git checkout protect_cr4_host
vim -t set_cr4_guest_host_mask
git reset --hard v5.3
git logc
vim -t set_cr4_guest_host_mask
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install
vim -t set_cr4_guest_host_mask
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install
sudo reboot
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host
sudo journalctl --dmesg
cd linux
vim -t set_cr4_guest_host_mask
vim -t handle_set_cr4
cd linux-kvm/
ll
git diff
git log -p
vim arch/x86/kernel/kvm.c
vim -t kvm_guest_cpu_init
time make -j $(($(nproc)*4)) bzImage
sudo journalctl --demg
sudo journalctl --dmesg
cd linux
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install
cd linux
vim -t handle_set_cr4
git grep SMEP
vim -t handle_set_cr4
vim -t kvm_get_cr4
vim -t kvm_set_cr4
tmux
sudo reboot
cd linux
git status
git add -A
git diff --staged
git status
git c 'kvm: Log on guest SMEP/SMAP disable'
git log
git push -f
find . -name kvm_para.h
vim ./include/uapi/linux/kvm_para.h
vim ./arch/x86/include/uapi/asm/kvm_para.h
git grep MSR_KVM_POLL_CONTROL
vim arch/x86/kvm/x86.c
git status
git diff
vim ./arch/x86/include/uapi/asm/kvm_para.h
vim ../linux-kvm/./arch/x86/include/uapi/asm/kvm_para.h
find . -name kvm_para.h
vim ./include/uapi/linux/kvm_para.h
git status
git diff
git grep msr_kvm_poll_control
vim arch/x86/include/asm/kvm_host.h
git status
git log -p
vim arch/x86/kvm/x86.c
git blame arch/x86/kvm/x86.c
vim arch/x86/kvm/x86.c
git blame arch/x86/kvm/x86.c
git log a2edf57f510cc
vim arch/x86/kvm/x86.c
git diff
git c 'kvm: Add MSR_KVM_CR4_NO_DISABLE'
git push
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install
cd linux-kvm/
vim -t kvm_guest_cpu_init
time make -j $(($(nproc)*4)) bzImage
vim -t kvm_guest_cpu_init
time make -j $(($(nproc)*4)) bzImage
git status
git diff
git c 'test disable logging'
git push
vim -t kvm_guest_cpu_init
git diff
git diff v5.3
time make -j $(($(nproc)*4)) bzImage
git status
git diff
git checkout -- arch/x86/kernel/kvm.c
git status
vim arch/x86/kernel/kvm.c
git diff
vim arch/x86/kernel/kvm.c
git status
git diff
time make -j $(($(nproc)*4)) bzImage
git status
git diff
git c 'kvm: Use MSR_KVM_CR4_NO_DISABLE'
git push
git commit --amend
git push -f
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host
sudo journalctl --dmesg
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host
sudo journalctl --dmesg
sudo journalctl --dmesg | tail
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host
sudo journalctl --dmesg | tail
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host
sudo journalctl --dmesg | tail
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host
tmux
sudo reboot
tmux
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host
cd linux
git status
vim -t kvm_set_msr_common
git grep kvm_vcpu
vim -t kvm_set_cr4
vim -t vmx_set_cr4
git status
git log -p
vim -t kvm_set_msr_common
git status
git diff
git commit --amend
git add -A
git commit --amend
git push -f
time make -j $(($(nproc)*4)) bzImage
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install
sudo reboot
vim -t kvm_set_msr_common
cd linux
vim -t kvm_set_msr_common
git grep msr_kvm_poll_control
vim arch/x86/kvm/x86.c
git grep HV_PARTITION_PRIVILEGE_MASK
git grep HV_PARTITION
vim drivers/pci/controller/pci-hyperv.c
git status
git diff
sudo journalctl --demg
sudo journalctl --dmesg | tail
sudo journalctl --dmesg
cd linux-kvm/
ll
git log -p
time make -j $(($(nproc)*4)) bzImage
vim -t kvm_guest_cpu_init
time make -j $(($(nproc)*4)) bzImage
git diff
cd ../linux
git status
vim -t kvm_set_msr_common
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host
sudo reboot
tmux
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host
sudo journalctl --dmesg
cd linux
vim -t kvm_set_msr_common
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install
sudo reboot
cd linux
git status
git diff
git add -A
git commit --amend
git push
git push -f
cd linux-kvm/
git log -p
tmux
sudo journalctl --dmesg
sudo journalctl --dmesg -f
qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host
cd linux
ll
du -h tags 
cd ~/linux-kvm/
vim -t kvm_guest_cpu_init
time make -j $(($(nproc)*4)) bzImage
git grep 'Hardware name'
git grep 'Cannot open root device'
vim init/do_mounts.c
git diff
vim init/do_mounts.c
time make -j $(($(nproc)*4)) bzImage
vim init/do_mounts.c
time make -j $(($(nproc)*4)) bzImage
git status
git diff
git status
git log
git c 'kvm: MSR_KVM_CR4_NO_DISABLE working'
git commit --amend
git push
git status
git log -p
vim -t kvm_guest_cpu_init
git grep per_cpu
vim -t wrmsrl
vim -t kvm_guest_cpu_init
vim -t wrmsrl
vim -t kvm_guest_cpu_init
git grep smp_prepare_boot_cpu
vim -t kvm_guest_cpu_init
git grep smp_prepare_cpus
git grep smp_prepare_cpus-\>
git grep smp_prepare_cpus\\.
git grep smp_prepare_cpus\.
git grep smp_prepare_cpus\\.
git grep smp_prepare_cpus-\\>
git grep smp_prepare_cpus-\\\>
git grep '\>smp_prepare_cpus'
git grep '\.smp_prepare_cpus'
vim arch/x86/include/asm/smp.h
git grep 'smp_prepare_cpus\('
git grep 'smp_prepare_cpus('
vim init/main.c
git grep smp_init
vim arch/powerpc/platforms/ps3/setup.c
git grep smp_init
git grep -rn smp_init
git grep -rnp smp_init
git grep -rnp smp_init | grep kvm
git grep -rnp smp_init
vim kernel/smp.c
git grep -rnp cpu_up
git grep -rnp cpu_up | grep kvm
vim kernel/smp.c
git grep smp_cpus_done
vim -t kvm_guest_cpu_init
git diff
time make -j $(($(nproc)*4)) bzImage
git push
git status
git diff
git c 'check for KVM_FEATURE_CR4_NO_DISABLE before MSR_KVM_CR4_NO_DISABLE'
git push
cd linux
git status
git diff
git c 'fix check for disable'
vim arch/x86/kvm/x86.c
vim -t kvm_set_msr_common
vim arch/x86/include/uapi/asm/kvm_para.h
vim ../linux-kvm/arch/x86/include/uapi/asm/kvm_para.h
git grep KVM_FEATURE_PV_SCHED_YIELD
vim arch/x86/kvm/cpuid.c
git grep KVM_FEATURE_PV_SCHED_YIELD
git grep KVM_FEATURE_CR4_NO_DISABLE
git diff
git c 'kvm: cpuid: Add KVM_FEATURE_CR4_NO_DISABLE bit'
git push
git log
git status
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install
git status
git log -p
vim -t kvm_set_cr4
vim -t setup_cr4
vim -t init_cr4
vim -t cr4_init
vim -t kvm_set_cr4
vim -t cr4_init
vim -t kvm_set_cr4
vim -t cr4_init
vim -t kvm_set_cr4
git diff
git status
git diff
git status
git diff
git c 'flow kees\'s pattern for warning on cr4 disable'
git c 'flow kees\\'s pattern for warning on cr4 disable'
git c "follow kees's pattern for warning on cr4 disable"
git push
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install
git grep KERN_WARN
vim -t kvm_set_cr4
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install
git status
sudo reboot
man kexec
tmux attach
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install && sudo systemctl stop secure-tunnel@johnsa1-desk.service && sudo kexec -l /boot/vmlinuz-5.3.0+ --append="$(cat /proc/cmdline)" --initrd=/boot/initramfs-5.3.0+.img && sudo kexec -e
cd linux-kvm/
git status
git log -p
vim -t kvm_guest_cpu_init
time make -j $(($(nproc)*4)) bzImage
cd ../linux
git diff v5.3
vim arch/x86/kvm/cpuid.c
git diff v5.3
git status
cd ../linux-kvm/
git status
git diff
git c 'kvm: Add logging on setup cr4 no disable'
git push
git log -p
vim -t kvm_guest_cpu_init
git grep kvm_para_has_feature
vim include/linux/kvm_para.h
git grep kvm_arch_para_features
vim arch/x86/kernel/kvm.c
git grep kvm_arch_para_features
vim include/linux/kvm_para.h
vim arch/x86/kernel/kvm.c
vim -t kvm_guest_cpu_init
time make -j $(($(nproc)*4)) bzImage
cd ../linux
vim arch/x86/kernel/kvm.c
git grep do_cpuid
vim -t __do_cpuid_func
vim ~/.bash_history 
tmux
tmux attach
qemu-system-x86_64 --version
git clone --depth=50 https://github.com/qemu/qemu/
cd qemu/
git grep do_cpuid
git grep cpuid
git grep KVM_CPUID_FEATURES,
git grep KVM_CPUID_FEATURES
git grep -pn -C 3 KVM_CPUID_FEATURES
git status
git log
git pull
git fetch
git tag
git fetch --atgs
git fetch --tags
git checkout v3.1.1
git checkout -b cr4_no_disable
git grep -pn -C 3 KVM_CPUID_FEATURES
vim include/standard-headers/asm-x86/kvm_para.h
git grep KVM_FEATURE_PV_SEND_IPI
vim target/i386/cpu.c
git grep 'KVM hints'
vim target/i386/cpu.c
ll
./configure 
python
vim README 
sudo dnf install -y python
mkdir build
cd build/
../configure 
sudo dnf install -y glib gthread
sudo dnf install -y glib-devel gthread-devel
sudo dnf install -y glib-dev gthread-dev
sudo dnf install -y git glib2-devel libfdt-devel pixman-devel zlib-devel
../configure 
make -j $(($(nproc)*4))
git grep Werror
cd ..
git grep Werror
vim /usr/include/bits/string_fortified.h
git tag
git checkout v4.1.0
git branch
git branch -D cr4_no_disable
git checkout -b cr4_no_disable
git diff
rm -rf build/
mkdir build/
cd build/
../configure 
make -j $(($(nproc)*4))
cd ..
rm -rf build/
mkdir build/
cd build/
../configure --enable-kvm --target-list="x86_64"
../configure --help
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user
make -j $(($(nproc)*4))
ll
find . -name \*-system-\*
./x86_64-softmmu/qemu-system-x86_64
./x86_64-softmmu/qemu-system-x86_64 --version
cd ../../
./qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host
cd qemu/
cd build/
cd qemu/build/
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu"
make -j $(($(nproc)*4))
~/qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel ~/linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host
~/qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel ~/linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host 2>&1 | grep -C kvm_
~/qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel ~/linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host 2>&1 | grep -C 5 kvm_
~/qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel ~/linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host 2>&1 | grep -C 2 kvm_
~/qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel ~/linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host 2>&1 | grep -C 2 kvm
~/qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel ~/linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host 2>&1 | grep -C 2 -i kvm
~/qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel ~/linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host
git status
cd ..
cd build/
cd 
~/qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel ~/linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host
git status
git log
cd linux-kvm/
git status
git log -p
cd ../linux
git grep -i CR4_NO_DISABLE
git grep -i CR_PINNING
vim arch/x86/include/uapi/asm/kvm_para.h
git grep -i kvm_steal_time
cd ../linux-kvm
git status
git push
git grep -i cr4_no_dissable
git grep -i cr4_no_disable
git diff
git diff v5.3
git checkout v5.3 -- arch/x86/include/uapi/asm/kvm_para.h
git status
git diff --staged
git apply
git status
git diff
patch -p1
tmux
~/qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel ~/linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host
cd linux-kvm/
ll
vim -t mount_block_root
vim arch/x86/kvm/kvm.c
vim arch/x86/kvm/x86.c
git grep CR_PINNING
vim arch/x86/kernel/kvm.c
time make -j $(($(nproc)*4)) bzImage
~/qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel ~/linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0' -nographic -cpu host
git status
git diff
git c 'added protect cr0_wp'
git push
reset
~/qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel ~/linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0 rootfstype=9p root=/dev/root rootflags=trans=virtio,version=9p2000.u rw' -nographic -cpu host -fsdev local,id=fsdev-root,path="${HOME}/chroot",security_model=passthrough -device virtio-9p-pci,fsdev=fsdev-root,mount_tag=/dev/root
~/qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel ~/linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0 rootfstype=9p root=/dev/root rootflags=trans=virtio,version=9p2000.u rw' -nographic -cpu host -fsdev local,id=fsdev-root,path="/",security_model=none,readonly -device virtio-9p-pci,fsdev=fsdev-root,mount_tag=/dev/root
reset
sudo apt-get install -y libattr1-dev libattr1
dnf
sudo dnf install -y libattr1-dev libattr1
sudo dnf install -y libattr1-dev libattr
sudo dnf install -y libattr-devlibattr
sudo dnf install -y libattr-dev libattr
sudo dnf install -y libattr-devel
sudo dnf install -y libcap-devel
ip a
df -h
watch df -h
git clone https://github.com/horms/kexec-tools
cd kexec-tools/
git grep 'https://github.com/horms/kexec-tools'
git grep 'Nothing'
vim kexec/kexec.c
ll ~/chroot/
ll
curl -sSL https://gist.github.com/pdxjohnny/3823a580786e029f52e623eab1ec8f7d/raw/cc46acb7c5e9bb123ac82fbbe912b2939097436e/conatiner_to_directory.sh | bash
cd chroot/
ll
vim init.c
vim init.c 
which kexec 
ll /usr/sbin/kexec
ldd /usr/sbin/kexec
man 3 kexec
man 2 kexec
cd ~/linux-kvm/
git diff v5.3
vim init/do_mounts.
vim init/do_mounts.c 
git status
time make -j $(($(nproc)*4)) bzImage
git grep 9P
grep -rn 9P .config
vim .config
grep -rn 9P .config
vim .config
grep -rn 9P .config
time make -j $(($(nproc)*4)) bzImage
ll vmlinux
kexec --help
grep -rn 9P .config
grep -rn KEXEC .config
which mount
man mount
cd ~/chroot/
curl -sSL 'https://gist.github.com/pdxjohnny/3823a580786e029f52e623eab1ec8f7d/raw/cc46acb7c5e9bb123ac82fbbe912b2939097436e/conatiner_to_directory.sh' | IMAGE=ubuntu DIR=$PWD bash
sudo dnf install -y docker
sudo systemctl enable --now docker
docker ps
sudo docker ps
sudo usermod -aG docker $USER
sudo groupadd docker
sudo usermod -aG docker $USER
bash --login
ll
ls -lAF
cd ..
ls -lAF
curl -sSL 'https://gist.github.com/pdxjohnny/3823a580786e029f52e623eab1ec8f7d/raw/cc46acb7c5e9bb123ac82fbbe912b2939097436e/conatiner_to_directory.sh' | IMAGE=ubuntu DIR="${HOME/chroot}" bash
ll ch
ll
ll linux
cd linux
git status
q
cd ../qem
cd ../
git status
git clone --depth=50 https://github.com/qemu/qemu/
~/qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel ~/linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0 init=/home/johnsa1/chroot/init.sh rootfstype=9p root=/dev/root rootflags=trans=virtio,version=9p2000.u rw' -nographic -cpu host -fsdev local,id=fsdev-root,path="/",security_model=none,readonly -device virtio-9p-pci,fsdev=fsdev-root,mount_tag=/dev/root
reset
~/qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel ~/linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0 init=/home/johnsa1/chroot/init.sh rootfstype=9p root=/dev/root rootflags=trans=virtio,version=9p2000.u rw' -nographic -cpu host -fsdev local,id=fsdev-root,path="/",security_model=none,readonly -device virtio-9p-pci,fsdev=fsdev-root,mount_tag=/dev/root
which ulimt
which ulimit
~/qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel ~/linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0 init=/home/johnsa1/chroot/init.sh rootfstype=9p root=/dev/root rootflags=trans=virtio,version=9p2000.u rw' -nographic -cpu host -fsdev local,id=fsdev-root,path="/",security_model=none,readonly -device virtio-9p-pci,fsdev=fsdev-root,mount_tag=/dev/root
reset
~/qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel ~/linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0 init=/home/johnsa1/chroot/init.sh rootfstype=9p root=/dev/root rootflags=trans=virtio,version=9p2000.u rw' -nographic -cpu host -fsdev local,id=fsdev-root,path="/",security_model=none,readonly -device virtio-9p-pci,fsdev=fsdev-root,mount_tag=/dev/root
reset
~/qemu/build/x86_64-softmmu/qemu-system-x86_64 -enable-kvm -kernel ~/linux-kvm/arch/x86/boot/bzImage -append 'console=ttyS0 init=/home/johnsa1/chroot/init.sh rootfstype=9p root=/dev/root rootflags=trans=virtio,version=9p2000.u rw' -nographic -cpu host -fsdev local,id=fsdev-root,path="/",security_model=none,readonly -device virtio-9p-pci,fsdev=fsdev-root,mount_tag=/dev/root
reset
cd ~/linux
git status
git diff
git push
mkdir ~/chroot
git status
git push
cd ~/qemu/
ll
git status
ll build/
git status
cd build/
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --help
git grep 9p
cd ..
git grep 9p
vim docs/interop/vhost-user.json
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --enable-vhost-user
cd build/
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --enable-vhost-user
make -j $(($(nproc)*4))
git grep virtio-9p-pci
cd ..
git grep virtio-9p-pci
git grep CONFIG_VIRTIO_9P
git grep VIRTIO_9P
vim hw/9pfs/Kconfig
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --enable-vhost-user --enable-virtfs --enable-virtio
cd build/
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --enable-vhost-user --enable-virtfs --enable-virtio && make -j $(($(nproc)*4))
cd ..
(cd build/ && ../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --enable-vhost-user --enable-virtfs --enable-virtio && make -j $(($(nproc)*4)))
vim hw/9pfs/Kconfig
git grep VIRTIO
git grep VIRTFS
make config
make menuconfig
cd build/
make menuconfig
vim ../Kconfig.host
vim ..MINIKCONF_ARGS
vim ../MINIKCONF_ARGS
vim ..MINIKCONF_ARGS
vim ../Kconfig.host
vim ../Makefile
vim ..//config-devices.mak.d
(cd build/ && ../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --enable-vhost-user --enable-virtfs --enable-virtio && make -j $(($(nproc)*4)))
cd ..
(cd build/ && ../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --enable-vhost-user --enable-virtfs --enable-virtio && make -j $(($(nproc)*4)))
git grep virtio
(cd build/ && ../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --enable-vhost-user --enable-virtfs --enable-virtio && make -j $(($(nproc)*4)))
(cd build/ && ../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" && make -j $(($(nproc)*4)))
git grep virtio-9p-pci
git grep CONFIG_VIRTIO_9P
(cd build/ && ../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --enable-vhost-user --enable-virtfs --enable-virtio && make -j $(($(nproc)*4)))
(cd build/ && ../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --enable-vhost-user --enable-virtfs && make -j $(($(nproc)*4)))
(cd build/ && ../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --enable-vhost-user --enable-virtfs --enable-virtio-9p && make -j $(($(nproc)*4)))
(cd build/ && ../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --enable-vhost-user --enable-virtfs && make -j $(($(nproc)*4)))
git status
git diff
cd ../
cd ~/chroot/
vim init.sh
echo 'time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install && sudo systemctl stop secure-tunnel@johnsa1-desk.service && sudo kexec -l /boot/vmlinuz-5.3.0+ --append="$(cat /proc/cmdline)" --initrd=/boot/initramfs-5.3.0+.img && sudo kexec -e' >> init.sh 
chmod 755 init.sh
vim init.sh
cp init.sh init-two.sh
vim init-two.sh
ll
vim init.sh 
vim init-two.sh 
vim init.sh 
which kexec
vim init-two.sh 
vim init.sh
ll
cd ~/chroot/
cat > init.sh
cat /etc/dnf/dnf.conf 
dnf list
dnf history userinstalled
cat ~/linux/.config
vim ~/linux/.config
cat ~/linux/.config
cat ~/linux/.config > /dev/tcp/otcsectest.jf.intel.com/8888
dnf history userinstalled
dnf history userinstalled | grep devel
dnf history userinstalled | grep devel | python3 -c 'import sys; print("\n".join(["-".join(line.split("-", max_split=3)) for line in sys.stdin]))'
dnf history userinstalled | grep devel | python3 -c 'import sys; print("\n".join(["-".join(line.split("-", max=3)) for line in sys.stdin]))'
dnf history userinstalled | grep devel | python3 -c 'import sys; print("\n".join(["-".join(line.split("-", 3)) for line in sys.stdin]))'
dnf history userinstalled | grep devel | python3 -c 'import sys; print("\n".join(["-".join(line.split("-", 2)) for line in sys.stdin]))'
dnf history userinstalled | grep devel | python3 -c 'import sys; print("\n".join(["-".join(line.split("-", 3)[:2]) for line in sys.stdin]))'
cat init.sh 
vim init.sh
cp init.sh ../
ll ../
chmod 755 init.sh 
chmod 755 ../init.sh 
cd ~/linux-combined/
ll
sudo make modules_install && sudo make install && sudo systemctl stop secure-tunnel@johnsa1-desk.service && sudo kexec -l /boot/vmlinuz-5.3.0+ --append="$(cat /proc/cmdline)" --initrd=/boot/initramfs-5.3.0+.img && sudo kexec -e
tmux attach
sudo systemctl status secure-tunnel@johnsa1-desk.service
sudo systemctl restart secure-tunnel@johnsa1-desk.service
ip a
sudo systemctl status secure-tunnel@johnsa1-desk.service
sudo journalctl --dmesg -f
sudo journalctl -xe -u secure-tunnel@johnsa1-desk | tail -n 50
sudo systemctl restart secure-tunnel@johnsa1-desk.service
sudo journalctl -xe -u secure-tunnel@johnsa1-desk | tail -n 50
sudo journalctl -xe -u secure-tunnel@johnsa1-desk
sudo systemctl status secure-tunnel@johnsa1-desk.service
ssh johnsa1-desk.jf.intel.com
sudo systemctl restart secure-tunnel@johnsa1-desk.service
sudo systemctl status secure-tunnel@johnsa1-desk.service
ssh johnsa1-desk.jf.intel.com
ssh-copyid johnsa1-desk.jf.intel.com
ssh-copy-id johnsa1-desk.jf.intel.com
ll ~/.ssh/
ssh-keygen -b 4096
ssh-copy-id johnsa1-desk.jf.intel.com
ssh johnsa1-desk.jf.intel.com
sudo systemctl restart secure-tunnel@johnsa1-desk.service
sudo systemctl status secure-tunnel@johnsa1-desk.service
ll ~/.ssh/
ll ~?
sudo cp init.sh chroot/usr/bin/
ldd "${HOME}/linux-combined/arch/x86/boot/bzImage"
ll "${HOME}/linux-combined/arch/x86/boot/bzImage"
git grep machine_shutdown
cd linux-combined/
git grep machine_shutdown
cd linux-combined/
ll
vim kexec/kexec.c
vim kernel/kexec.c
time make -j $(($(nproc)*4)) bzImage
vim kernel/kexec.c
git grep 'Starting new kernel''
git grep 'Starting new kernel'
vim kernel/kexec_core.c
git grep _reset
git grep _cpureset
git grep cpu_reset
vim arch/x86/kvm/x86.c
git status
git diff
git checkout -- arch/x86/kernel/relocate_kernel_64.S
git status
git diff
git add -A
git reset arch/x86/kernel/cpu/common.c
git checkout -- arch/x86/kernel/cpu/common.c
git status
git diff --staged
git c 'clear pinning on vcpu reset'
git push
    git push --set-upstream origin protect_cr4
git remote
git remote -v
cat ~/.ssh/id_rsa.pub 
    git push --set-upstream origin protect_cr4
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install && sudo systemctl stop secure-tunnel@johnsa1-desk.service && sudo kexec -l /boot/vmlinuz-5.3.0+ --append="$(cat /proc/cmdline)" --initrd=/boot/initramfs-5.3.0+.img && sudo kexec -e
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) && sudo make modules_install && sudo make install && sudo systemctl stop secure-tunnel@johnsa1-desk.service && sudo kexec -l /boot/vmlinuz-5.3.0+ --append="$(cat /proc/cmdline)" --initrd=/boot/initramfs-5.3.0+.img && sudo kexec -e
tmux
~/run.sh 
~/run.sh 
vim arch/x86/kvm/x86.c
cd linux-combined/
vim arch/x86/kvm/x86.c
git grep vm_exit
git grep soft_reset
git grep soft_reset | grep -v drivers/ \ less
git grep soft_reset | grep -v drivers/ | less
vim kernel/kexec_core.c
git grep soft_reset | grep -v drivers/ | less
vim kernel/k
vim kernel/kexec_core.c
git grep machine_kexec
vim arch/x86/kernel/machine_kexec_64.c
git grep relocate_kernel,
git grep relocate_kernel
vim arch/x86/kernel/relocate_kernel_64.S
time make -j $(($(nproc)*4)) bzImage
cat arch/x86/kernel/relocate_kernel_64.S
tmux
