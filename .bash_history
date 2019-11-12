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
git status
cd ..
vim README.md
cat README.md
head README.md
vim ~/run.sh 
~/run.sh
vim ~/run.sh 
~/run.sh -gdb
~/run.sh -s
~/run.sh -s -S
vim ~/run.sh
~/run.sh -s -S
gdb
sudo dnf install -y gdb
gdb
gdb vmlinux 
cd 
vim README.md 
git add README.md
git status
git add -f README.md 
git diff
git c 'nokaslr for gdb debugging'
git push
git status
git add -A
git status
git c 'history'
git push
cd linux
cd ~/linux-combined/
vim arch/x86/kernel/relocate_kernel_64.S
git grep SMAP
git grep SMEP
git grep X86_CR4_SMEP
git status
git diff
git c 'in relocate_kernel do not turn off CR4 SMEP SMAP or CR0 WP'
git push
time make -j $(($(nproc)*4)) bzImage
~/run.sh 
git grep X86_CR4_SMEP
tmux
git status
~/run.sh -s -S
objdump -D vmlinux
objdump -D vmlinux > /tmp/objdump
vim /tmp/objdump
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
