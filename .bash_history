git diff
git stash
git rebase -i HEAD~7
git stash pop
git diff
git grep CR4_GUES
vim arch/x86/kvm/vmx/vmx.c
git grep BUILD_BUG_ON
vim arch/x86/kvm/vmx/vmcs_shadow_fields.h
vim arch/x86/kvm/vmx/vmx.c
git diff
git status
git add -A
git status
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
vim arch/x86/kvm/x86.c
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
vim arch/x86/kvm/x86.c
vim arch/x86/kvm/vmx/vmx.c
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
git status
git diff
git add -A
git grep capibility arch/x86
git grep capibility arch/x86/kvm
git grep cap arch/x86/kvm
git grep capability arch/x86/kvm
git grep cap arch/x86/kvm
vim -t kvm_vcpu_ioctl_enable_cap
vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git grep kvm_arch_vcpu_ioctl_get_regs
vim virt/kvm/kvm_main.c
git grep -i msr virt/kvm/
git grep -i msr arch/x86/kvm/
git grep __kvm_set_msr
git grep -p __kvm_set_msr
git grep -p do_set_msr
vim -t kvm_arch_vcpu_ioctl
vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git log -p
vim include/uapi/linux/kvm_para.h
git status
git add -A
git stash
git status
git rebase -i HEAD~2
git status
git diff
git status
git diff
git diff --staged
git rebase --abort
git status
git rebase -i HEAD~2
git diff
git diff HEAD~1
patch -p1 << 'EOF'
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index b83d8201483c..a4625c7e0fec 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -1249,6 +1249,8 @@ static const u32 emulated_msrs_all[] = {
        MSR_KVM_POLL_CONTROL,
        MSR_KVM_CR0_PIN_ALLOWED,
        MSR_KVM_CR4_PIN_ALLOWED,
+       MSR_KVM_CR0_PINNED,
+       MSR_KVM_CR4_PINNED,
 };

 static u32 emulated_msrs[ARRAY_SIZE(emulated_msrs_all)];
@@ -2805,6 +2807,18 @@ int kvm_set_msr_common(struct kvm_vcpu *vcpu, struct msr_data *msr_info)
                vcpu->arch.msr_kvm_poll_control = data;
                break;

+       case MSR_KVM_CR0_PINNED:
+               if ((!msr_info->host_initiated && vcpu->arch.cr0_pinned) ||
+                   (pin & ~KVM_CR0_PIN_ALLOWED))
+                       return 1;
+               vcpu->arch.cr0_pinned = data;
+               break;
+       case MSR_KVM_CR4_PINNED:
+               if ((!msr_info->host_initiated && vcpu->arch.cr4_pinned) ||
+                   (pin & ~KVM_CR4_PIN_ALLOWED))
+                       return 1;
+               vcpu->arch.cr4_pinned = data;
+               break;
        case MSR_IA32_MCG_CTL:
        case MSR_IA32_MCG_STATUS:
        case MSR_IA32_MC0_CTL ... MSR_IA32_MCx_CTL(KVM_MAX_MCE_BANKS) - 1:
@@ -3054,6 +3068,12 @@ int kvm_get_msr_common(struct kvm_vcpu *vcpu, struct msr_data *msr_info)
        case MSR_KVM_CR4_PIN_ALLOWED:
                msr_info->data = KVM_CR4_PIN_ALLOWED;
                break;
+       case MSR_KVM_CR0_PINNED:
+               msr_info->data = vcpu->arch.cr0_pinned;
+               break;
+       case MSR_KVM_CR4_PINNED:
+               msr_info->data = vcpu->arch.cr4_pinned;
+               break;
        case MSR_IA32_P5_MC_ADDR:
        case MSR_IA32_P5_MC_TYPE:
        case MSR_IA32_MCG_CAP:
EOF

vim arch/x86/kvm/x86.c.rej
git diff HEAD~1
vim arch/x86/include/uapi/asm/kvm_para.h
git diff HEAD~1
vim Documentation/virt/kvm/hypercalls.txt
vim Documentation/virt/kvm/msr.txt
patch -p1 << 'EOF'
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index b83d8201483c..a4625c7e0fec 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -1249,6 +1249,8 @@ static const u32 emulated_msrs_all[] = {
        MSR_KVM_POLL_CONTROL,
        MSR_KVM_CR0_PIN_ALLOWED,
        MSR_KVM_CR4_PIN_ALLOWED,
+       MSR_KVM_CR0_PINNED,
+       MSR_KVM_CR4_PINNED,
 };

 static u32 emulated_msrs[ARRAY_SIZE(emulated_msrs_all)];
@@ -2805,6 +2807,18 @@ int kvm_set_msr_common(struct kvm_vcpu *vcpu, struct msr_data *msr_info)
                vcpu->arch.msr_kvm_poll_control = data;
                break;

+       case MSR_KVM_CR0_PINNED:
+               if ((!msr_info->host_initiated && vcpu->arch.cr0_pinned) ||
+                   (pin & ~KVM_CR0_PIN_ALLOWED))
+                       return 1;
+               vcpu->arch.cr0_pinned = data;
+               break;
+       case MSR_KVM_CR4_PINNED:
+               if ((!msr_info->host_initiated && vcpu->arch.cr4_pinned) ||
+                   (pin & ~KVM_CR4_PIN_ALLOWED))
+                       return 1;
+               vcpu->arch.cr4_pinned = data;
+               break;
        case MSR_IA32_MCG_CTL:
        case MSR_IA32_MCG_STATUS:
        case MSR_IA32_MC0_CTL ... MSR_IA32_MCx_CTL(KVM_MAX_MCE_BANKS) - 1:
@@ -3054,6 +3068,12 @@ int kvm_get_msr_common(struct kvm_vcpu *vcpu, struct msr_data *msr_info)
        case MSR_KVM_CR4_PIN_ALLOWED:
                msr_info->data = KVM_CR4_PIN_ALLOWED;
                break;
+       case MSR_KVM_CR0_PINNED:
+               msr_info->data = vcpu->arch.cr0_pinned;
+               break;
+       case MSR_KVM_CR4_PINNED:
+               msr_info->data = vcpu->arch.cr4_pinned;
+               break;
        case MSR_IA32_P5_MC_ADDR:
        case MSR_IA32_P5_MC_TYPE:
        case MSR_IA32_MCG_CAP:
EOF

vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git diff
vim Documentation/virt/kvm/msr.txt
git diff
vim Documentation/virt/kvm/msr.txt
git diff
vim Documentation/virt/kvm/msr.txt
git add -A
git status
git rebase --continue
git status
git log -p
vim arch/x86/kvm/x86.c
git rebase -i HEAD~2
git stash
git rebase -i HEAD~2
git stash pop
git diff
git rebase --continue
git add -A
git rebase --continue
git log -p
git rebase -i HEAD~2
git rm -f arch/x86/kvm/x86.c.rej
git status
git diff HEAD~1
vim include/uapi/linux/kvm_para.h
git diff HEAD~1
vim arch/x86/kvm/x86.c
git diff
git add -A
git rebase --continue
git log -p HEAD~1
vim arch/x86/kernel/cpu/common.c
git grep wrmsr_safe
vim arch/x86/kernel/cpu/common.c
git grep wrmsrl_safe
vim arch/x86/kernel/cpu/common.c
git diff
git add -A
git status
git commit --amend
git status
git log -p
git status
git log
git push -f
git status
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
git rebase -i HEAD~2
vim arch/x86/kvm/x86.c
git diff
git add -A
git rebase --continue
git status
vim ~/.gitignore 
vim ~/.gitignore
vim ~/.gitconfig 
git rebase -i HEAD~2
rm -rf kernel/kheaders_data.tar.xz
rm -rf kernel/kheaders_data.tar.xz.tmp/
git status
git add -A
git status
git rebase --continue
git log --stat
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
vim include/uapi/linux/kvm_para.h
vim ./arch/x86/include/asm/kvm_host.h
git status
git grep KVM_STEAL_TIME
vim arch/x86/include/uapi/asm/kvm_para.h
git status
git diff
git reset --hard HEAD
git status
git push -f
git status
~/run.sh 
git log -p
git rebase -i HEAD~2
vim Documentation/virt/kvm/msr.txt
git diff
git add -A
git rebase --continue
git status
git push -f
sudo chroot ~/chroot/
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
~/run.sh -smp cpus=2 2>&1 | grep -i pinning
~/run.sh 2>&1 | grep -i pinning
git status
git push -f
git grep kvm_set_cr4
git grep kvm_set_cr0
git grep kvm_lmsw
git status
git log -p
git status
git grep VMX_CR0_FIXED0
git grep VMX_CR4_FIXED0
git grep VMX_CR4_FIXED1
git grep VMX_CR0_FIXED1
git grep -E 'VMX_CR[0|1]_FIXED[0|1]'
git grep -E 'kvm_set_cr[0|4]'
git grep -E 'VMX_CR[0|4]_FIXED[0|1]'
git grep -E 'kvm_set_cr[0|4]'
git grep -C 4 -E 'kvm_set_cr[0|4]'
git grep -pC 4 -E 'kvm_set_cr[0|4]'
git grep -p -E '[smv|vmx]_set_cr[0|4]'
git grep -p -E '[\<smv\>|\<vmx\>]_set_cr[0|4]'
git grep -p -E 'vmx_set_cr[0|4]'
git status
git send-email --subject-prefix="RFC v2" --annotate --cover-letter --to kristen.c.accardi@intel.com --to rick.p.edgecombe@intel.com --to linux-security@eclists.intel.com --to linux-drivers-review@eclists.intel.com --to sean.j.christopherson@intel.com --to jun.nakajima@intel.com HEAD~6
git send-email --subject-prefix="RFC v2" --annotate --cover-letter --to kristen.c.accardi@intel.com --to rick.p.edgecombe@intel.com --to linux-security@eclists.intel.com --to linux-drivers-review@eclists.intel.com --to sean.j.christopherson@intel.com --to jun.nakajima@intel.com --to dave.hansen@intel.com --to enrico.perla@intel.com HEAD~6
echo 'git send-email --subject-prefix="RFC v2" --annotate --cover-letter --to kristen.c.accardi@intel.com --to rick.p.edgecombe@intel.com --to linux-security@eclists.intel.com --to linux-drivers-review@eclists.intel.com --to sean.j.christopherson@intel.com --to jun.nakajima@intel.com --to dave.hansen@intel.com --to enrico.perla@intel.com HEAD~6' >> ~/README.md 
cd ~
git status
git add outgoing/*
git add -f outgoing/*
git status
vim README.md 
git add -A
git status
git add -f git-send-email-cover 
git status
git c 'RFC v2'
git push
sudo vim chroot/usr/bin/init.sh 
INIT=/usr/bin/init.sh ~/run.sh
sudo vim chroot/usr/bin/init.sh 
sudo chroot chroot/
~/run.sh 
sudo chroot chroot/
~/run.sh 
sudo chroot chroot/
vim ~/run.sh 
~/run.sh 
sudo chroot chroot/
cat ~/.ssh/authorized_keys 
cat ~/.ssh/id_rsa.pub 
sudo cp ~/.ssh/id_rsa.pub chroot/root/.ssh/authorized_keys
sudo mkdir chroot/root/.ssh/
sudo cp ~/.ssh/id_rsa.pub chroot/root/.ssh/authorized_keys
ll chroot/root/.ssh/authorized_keys
sudo ls -lAF chroot/root/.ssh/authorized_keys
vim ~/run.sh 
~/run.sh 
vim ~/run.sh 
~/run.sh 
sudo chroot chroot/
~/run.sh 
sudo chroot chroot/
~/run.sh 
sudo chroot chroot/
~/run.sh 
sudo chroot chroot/
~/run.sh 
sudo chroot chroot/
~/run.sh 
ll chroot
ll chroot/etc/p
ll chroot/etc/
ll chroot/etc/ | grep ass
vim ~/run.sh
~/run.sh 
sudo vim chroot/etc/selinux/config
~/run.sh 
sudo vim chroot/etc/selinux/config
~/run.sh 
vim ~/run.sh
~/run.sh 
sudo vim /etc/selinux/config
sudo journalctl --dmesg -f
vim ~/run.sh
~/run.sh 
ll chroot
ll chroot/etc/
~/run.sh 
INIT=/usr/bin/bash ~/run.sh 
vim ~/run.sh
INIT=/usr/bin/bash ~/run.sh 
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim ~/run.sh
~/run.sh
vim run.sh 
~/run.sh
sudo chroot chroot/
sudo vim /etc/selinux/config
sudo vim chroot/usr/bin/init.sh
sudo chroot chroot/
sudo vim chroot/usr/bin/init.sh
mount -t proc proc /proc -n
sudo chroot chroot/
sudo ss -tpln
sudo kill 16487
sudo ss -tpln
~/run.sh
cd linux-combined/
git grep live\ migration
vim Documentation/virt/kvm/api.txt
git grep BUILD_BUG_ON
git grep BUILD_BUG_ON Documentation/
vim arch/x86/kvm/kvm.c
vim arch/x86/kvm/x86.c
git grep CR4_RESERVED_BITS
git grep -C 5 CR4_RESERVED_BITS
vim -t kvm_emulate_hypercall
cd ~/qemu/
ll
git status
git grep reboot
git grep -i reboot
git grep QEMU_OPTION_no_reboot
vim vl.c
git grep reset_requested
vim vl.c
git grep MachineClass
git grep machine_init\(MachineClass
git grep machine_init.\*MachineClass
vim hw/core/null-machine.c
vim -t mcf5208evb_machine_init
vim hw/hppa/machine.c
vim vl.c
cd build/
make -j $(($(nproc)*4))
~/run.sh
sudo chroot chroot/
sudo chroot ~/chroot/
~/run.sh
cat /tmp/f
xxd /tmp/f
stat /tmp/f
rm /tmp/f
vim vl.c
vim ../vl.c
make -j $(($(nproc)*4))
~/run.sh
cat /tmp/f
git grep 'Standard PC (i440FX + PIIX, 1996)'
cd ..
git grep 'Standard PC (i440FX + PIIX, 1996)'
vim hw/i386/pc_piix.c
git grep -pn 'Standard PC (i440FX + PIIX, 1996)'
vim hw/i386/pc_piix.c
git grep MachineClass
git grep MACHINE_GET_CLASS
vun include/hw/boards.h
vim include/hw/boards.h
git grep \-\>reset
git grep \-\\>reset
git grep \\-\\>reset
git grep '\\->reset'
git grep '\->reset'
git grep '\->reset' hw/i386/
git grep pc_machine_reset
vim hw/i386/pc.c
git grep msr
vim target/i386/kvm.c
git grep kvm_has_smm
vim hw/i386/pc.c
git grep qemu_devices_reset
vim include/sysemu/reset.h
vim hw/core/reset.c
git grep qemu_register_reset
vim hw/core/reset.c
git diff
vim vl.c
vim hw/core/reset.c
vim hw/i386/pc.c
vim hw/core/reset.c
git grep qemu_register_reset
git grep kvm
git grep qemu_register_reset
vim target/i386/kvm.c
git grep kvm_msr_list
vim linux-headers/asm-x86/kvm.h
vim target/i386/kvm.c
git grep -C 4 TODOcr4
git grep -nC 4 TODOcr4
vim target/i386/kvm.c
git grep kvm_arch_get_supported_msr_feature
vim target/i386/cpu.c
vim target/i386/cpu.h
git grep 'cr.*pinned'
git grep 'cr.*pin'
git grep 'cr-pin'
git grep 'cr_pin'
git grep 'kvm-cr-pin'
git status
rm reset 
rm git status
git status
git add target/
git diff --staged
vim target/i386/kvm.c
git add target/
git diff --staged
git status
git commit -sm 'Add cr msrs'
git push
cd build/
make -j $(($(nproc)*4))
git grep MSR_KVM_
cd ..
git grep MSR_KVM_
vim include/standard-headers/asm-x86/kvm_para.h
stat include/standard-headers/asm-x86/kvm_para.h
vim include/standard-headers/asm-x86/kvm_para.h
git status
git diff
git grep KVM_FEATURE_PV_SEND_IPI
git grep KVM_FEATURE_PV_TLB_FLUSH
git grep KVM_FEATURE_CR_PIN
git add include/
git status
git commit --amend
git push -f
make -j $(($(nproc)*4))
cd build/
make -j $(($(nproc)*4))
~/run.sh
~/run.sh 2>&1 | grep -i pinning
~/run.sh -smp cpus=2 2>&1 | grep -i pinning
git status
~/run.sh -smp cpus=4 2>&1 | grep -i pinning
cd ../
git status
git log -p
git format-patch HEAD~2 ../qemu-outgoing/
mkdir ../qemu-outgoing/
git format-patch HEAD~2 ../qemu-outgoing/
git format-patch ../qemu-outgoing/ HEAD~2
git format-patch -h ../qemu-outgoing/ HEAD~2
git format-patch -o ../qemu-outgoing/ HEAD~2
git reset --hard HEAD~2
git am ../qemu-outgoing/0002-Add-cr-msrs.patch
git status
git log 
git log -p
git blame target/i386/kvm.c
git log 9c600a84544
git commit -s --amend
git am ../qemu-outgoing/0001-target-i386-adds-CR-pin-CPUID-feature-bit.patch
git log
rm -rf ../qemu-outgoing/
git add -A
git status
git push -f
git log -p
rm -rf ../qemu-outgoing && git format-patch -o ../qemu-outgoing/ HEAD~2
vim ../qemu-outgoing/0001-target-i386-kvm-Add-cr-pin-MSRs.patch
vim ../qemu-outgoing/0002-target-i386-adds-CR-pin-CPUID-feature-bit.patch 
git reset --hard HEAD~2
git am ../qemu-outgoing/*
git status
git log -p
rm -rf ../qemu-outgoing && git format-patch -o ../qemu-outgoing/ HEAD~2
git reset --hard HEAD~1
cd build/
make
make -j $(($(nproc)*4))
~/run.sh -smp cpus=4 2>&1 | grep -i pinning
~/run.sh -smp cpus=4
cd ..
git am ../qemu-outgoing/*
git status
git am ../qemu-outgoing/0002-target-i386-adds-CR-pin-CPUID-feature-bit.patch
git status
git am --abort
git am ../qemu-outgoing/0002-target-i386-adds-CR-pin-CPUID-feature-bit.patch
git status
~/run.sh -smp cpus=4
vim ~/run.sh
~/run.sh -smp cpus=4
git status
git push -f
rm -rf ../qemu-outgoing && git format-patch -o ../qemu-outgoing/ HEAD~2
cd ..
git add qemu-outgoing/*
git add -f qemu-outgoing/*
git status
git diff
git commit -s 'QEMU patches'
git commit -sm 'QEMU patches'
git push
git add run.sh 
git commit -sm 'mount root rw'
git push
git status
git diff
git checkout -- chroot
sudo chmod 777 chroot/usr/bin/init.sh 
git checkout -- chroot
git checkout -- chroot/usr/bin/init.sh
ll chroot/usr/bin/init.sh
ll chroot/usr/bin/
stat chroot/usr/bin/
sudo chmod o+w chroot/usr/bin/
sudo chmod o+w chroot/usr/
sudo chmod o+w chroot/
git checkout -- chroot/usr/bin/init.sh
git status
git diff
git status
cd ~/qemu/build/
git status
git log
make -j $(($(nproc)*4))
cd ..
rm -rf build/
mkdir build/
cd build/
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu"
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --static
unset CC
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --static
cd ..
rm -rf build/
mkdir build/
cd build/
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --static
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu"
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --static
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --static -v
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu" --static --help
ll
../configure --enable-kvm --enable-system --disable-user --disable-linux-user --disable-bsd-user --target-list="x86_64-softmmu"
make -j $(($(nproc)*4))
~/run.sh -smp cpus=4 2>&1 | grep -i pinning
vim ~/run.sh
ll "${HOME}/qemu/build/x86_64-softmmu/qemu-system-x86_64"
ldd "${HOME}/qemu/build/x86_64-softmmu/qemu-system-x86_64"
sudo chroot ~/chroot/
ll ~/chroot/home/johnsa1/
ll ~/chroot/home/johnsa1/.ssh/
stat ~/chroot/home/johnsa1/.ssh/
cp ~/.ssh/id_rsa.pub ~/chroot/home/johnsa1/.ssh/authorized_keys
ll ~/chroot/home/johnsa1/.ssh/authorized_keys
cat ~/chroot/home/johnsa1/.ssh/authorized_keys
sudo chroot ~/chroot/
vim ~/run.sh
mkdir -p "~/chroot/${HOME}/qemu/build/x86_64-softmmu/"
ll "~/chroot/${HOME}/qemu/build/x86_64-softmmu/"
realpath "~/chroot/${HOME}/qemu/build/x86_64-softmmu/"
realpath "${HOME}/chroot/${HOME}/qemu/build/x86_64-softmmu/"
realpath "${HOME}/chroot${HOME}/qemu/build/x86_64-softmmu/"
mkdir -p ""${HOME}/chroot${HOME}/qemu/build/x86_64-softmmu/"
mkdir -p "${HOME}/chroot${HOME}/qemu/build/x86_64-softmmu/"
ll "${HOME}/chroot${HOME}/qemu/build/x86_64-softmmu/"
stat "${HOME}/chroot${HOME}/qemu/build/x86_64-softmmu/"
cat ~/run.sh
cp "${HOME}/qemu/build/x86_64-softmmu/qemu-system-x86_64" "$HOME/chroot${HOME}/qemu/build/x86_64-softmmu/qemu-system-x86_64"
ll "$HOME/chroot${HOME}/qemu/build/x86_64-softmmu/qemu-system-x86_64"
sudo chroot ~/chroot/
cat ~/run.sh
vim ~/run.sh
vim ~/git-send-email-cover 
rm -rf /home/johnsa1/chroot/home/johnsa1/qemu/build/
cp -r . /home/johnsa1/chroot/home/johnsa1/qemu/build/
ll /home/johnsa1/chroot/home/johnsa1/qemu/build/
sudo chroot ~/chroot/
cp -r ~/chroot ~/nested
sudo rm -rf ~/nested
sudo cp -r ~/chroot ~/nested
sudo umount ~/chroot/proc
sudo rm -rf ~/nested
sudo cp -r ~/chroot ~/nested
sudo df -h --sumarize ~/chroot
sudo df -h --summarize ~/chroot
sudo df -h --sumurize ~/chroot
sudo df -h --sumerize ~/chroot
sudo df -h --max-depth=1 ~/chroot
sudo du -h --max-depth=1 ~/chroot
sudo du -h --max-depth=1 ~/nested/
sudo mv ~/nested/ ~/chroot/home/johnsa1/chroot
sudo cp ~/run.sh ~/chroot/home/johnsa1/
cat /sys/module/kvm_intel/parameters/nested
vim ~/run.sh
sudo cp ~/run.sh ~/chroot/home/johnsa1/run.sh 
cat ~/chroot/home/johnsa1/run.sh
cat /etc/modprobe.d/kvm.conf
sudo vim /etc/modprobe.d/kvm.conf
sudo vim ~/chroot//etc/modprobe.d/kvm.conf
sudo vim /etc/modprobe.d/kvm.conf
sudo reboot
git log -p
git rebase -i HEAD~2
git push -f
rm -rf ../outgoing/ && git format-patch -M upstream/master -o ../outgoing/
git statsu
git status
git diff
git log -p
git push -f
cd ..
git status
git add -A
git status
git add -f outgoing/*
git status
git c 'RFC v3'
git push
vim git-send-email-cover 
cat > git-send-email-cover
vim git-send-email-cover
git add git-send-email-cover
git status
git c 'update cover letter'
git push
ll ~/chroot/lib/modules/
ll ~/chroot/lib/*
ll ~/chroot/lib/mod*
ll ~/chroot/boot/
sudo rm ~/chroot/boot/vmlinux
ll ~/chroot/boot/
ssh -p 2222 127.0.0.1
cd linux-combined/
export INSTALL_MOD_PATH=/home/johnsa1/chroot
export INSTALL_PATH=${INSTALL_MOD_PATH}/boot
sudo make -j $(($(nproc)*4)) modules_install && sudo make install
sudo -E make -j $(($(nproc)*4)) modules_install && sudo -E make install
git grep pin run.log
git grep pinning run.log
ssh -p 2222 127.0.0.1
sudo ss -tpln
ssh -p 2222 localhost
git status
git c 'working on cover letter'
git push
git status
cd ~/qemu
git log -p
vim target/i386/kvm.c
make -j $(($(nproc)*4))
cd by
cd build/
cd by
make -j $(($(nproc)*4))
~/run.sh 
INIT=/home/johnsa1/chroot/usr/bin/rebooter ~/run.sh 
cd ..
git status
git diff
git reset --hard HEAD
git status
cd build/
make -j $(($(nproc)*4))
~/run.sh 
INIT=/home/johnsa1/chroot/usr/bin/rebooter ~/run.sh 
INIT=/home/johnsa1/chroot/usr/bin/rebooter ~/run.sh  | grep -i pinning
git status
cd ~/qemu
ll
git status
git tag my-qemu-tag
git status
git push --tags
uname -a
sudo chroot ~/chroot/
tmux
git status
git diff git-send-email-cover
git add git-send-email-cover
git diff git-send-email-cover
git add git-send-email-cover
cd linux-combined/
git log -p
git status
git commit --amend
git log -p
git rebase -i HEAD~2
git status
git push -f
git status
rm -rf ../outgoing/ && git format-patch -M upstream/master -o ../outgoing/
cd ..
git statuss
git status
git diff
git add -A
git status
git c 'RFC v3'
git status
git push
git log -p
cd linux-combined/
git log -p
git rebase -i HEAD~2
vim Documentation/virt/kvm/msr.txt
git diff
git add -A
git rebase --continue
git log -p
rm -rf ../outgoing/ && git format-patch -M upstream/master -o ../outgoing/
./scripts/checkpatch.pl ../outgoing/0001-KVM-X86-Add-CR-pin-MSRs.patch
./scripts/checkpatch.pl ../outgoing/0002-X86-Use-KVM-CR-pin-MSRs.patch 
git status
git push -f
cd ..
git status
git diff
git add -A
git commit --amend
git push -f
cd linux-combined/
git send-email --subject-prefix="RFC v3" --annotate --cover-letter --to linux-security@eclists.intel.com --to linux-drivers-review@eclists.intel.com --to kristen.c.accardi@intel.com --to rick.p.edgecombe@intel.com --to sean.j.christopherson@intel.com --to arjan@linux.intel.com HEAD~2
git status
git log -p
git rebase -i HEAD~2
vim arch/x86/kernel/cpu/common.c
git status
git rebase --abort
vim arch/x86/kernel/cpu/common.c
find . -name kvm_para.h
vim ./include/linux/kvm_para.h
vim ./include/uapi/linux/kvm_para.h
vim ./arch/x86/include/asm/kvm_para.h
git grep kvm_spin
vim arch/x86/kernel/kvm.c
git grep setup_paravirt_cr_pinning
git grep cr4_pinned_bits
vim arch/x86/kernel/cpu/common.c
git diff
git grep extern
git grep extern\
git grep extern\ 
git grep -E 'extern.*__'
git grep -E 'extern.*__ro'
vim ~/run.sh
sudo ss -tpln
vim ~/run.sh
sudo ss -tpln
vim ~/run.sh
sudo ss -tpln
git status
git diff
git add run.sh 
sudo vim ~/chroot/home/johnsa1/run.sh
sudo chroot ~/chroot/
~/run.sh
vim ~/run.sh
~/run.sh
git diff
~/run.sh
vim ~/run.sh
~/run.sh
~/run.sh 2>&1 | tee /tmp/run.log
vim /tmp/run.log
grep read /tmp/run.log
grep root /tmp/run.log
grep -i mount /tmp/run.log
vim ~/run.sh
~/run.sh
INIT=/usr/bin/bash ~/run.sh
vim ~/run.sh
INIT=/usr/bin/bash ~/run.sh
reset
ll ~/chroot/home/johnsa1/run.sh
sudo chown johnsa1:johnsa1 ~/chroot/home/johnsa1/run.sh
ll ~/chroot/home/johnsa1/run.sh
vim ~/chroot/home/johnsa1/run.sh
sudo vim ~/chroot/usr/bin/init.sh
INIT=/usr/bin/init.sh ~/run.sh
vim ~/chroot/home/johnsa1/run.sh
sudo vim ~/chroot/usr/bin/init.sh
INIT=/usr/bin/init.sh ~/run.sh
sudo vim ~/chroot/usr/bin/init.sh
sudo find ~/chroot/ -name modprobe
sudo vim ~/chroot/usr/bin/init.sh
INIT=/usr/bin/init.sh ~/run.sh
htop
vim ~/run.sh 
INIT=/usr/bin/init.sh ~/run.sh
sudo find -name kvmvapic.bin ~/
sudo find ~ -name kvmvapic.bin
sudo find /usr/ -name kvmvapic.bin
sudo chroot ~/chroot/
INIT=/usr/bin/init.sh ~/run.sh
sudo vim ~/chroot/usr/bin/init.sh
sudo vim ~/chroot/home/johnsa1/run.sh
ll ~/chroot/home/johnsa1/qemu/build/pc-bios/optionrom/kvmvapic.bin
ll ~/chroot/home/johnsa1/qemu/build/pc-bios/optionrom/*
sudo find ~/qemu/build/ -name vgabios-stdvga.bin
sudo vim ~/chroot/usr/bin/init.sh
sudo vim ~/chroot/home/johnsa1/run.sh
sudo vim ~/chroot/usr/bin/init.sh
INIT=/usr/bin/init.sh ~/run.sh
sudo vim ~/chroot/usr/bin/init.sh
INIT=/usr/bin/init.sh ~/run.sh
sudo vim ~/chroot/usr/bin/init.sh
sudo vim ~/chroot/home/johnsa1/run.sh
INIT=/usr/bin/init.sh ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
vim /tmp/run.log
sudo chroot ~/chroot/
sudo vim ~/chroot/home/johnsa1/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
vim /tmp/run.log
sudo chroot ~/chroot/
vim ~/run.sh 
rm -rf ~/chroot/home/johnsa1/qemu/
sudo cp -r ~/qemu ~/chroot/home/johnsa1/qemu/
sudo rm -rf ~/chroot/home/johnsa1/qemu/
cp -r ~/qemu ~/chroot/home/johnsa1/qemu/
sudo chroot ~/chroot/
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
sudo vim ~/chroot/home/johnsa1/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
sudo vim ~/chroot/home/johnsa1/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
sudo vim ~/chroot/home/johnsa1/run.sh
sudo chroot ~/chroot/home/johnsa1/chroot/
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
sudo chroot ~/chroot/home/johnsa1/chroot/
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
sudo vim ~/chroot/home/johnsa1/run.sh
vim ~/run.sh 
sudo vim ~/chroot/home/johnsa1/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
sudo vim ~/chroot/home/johnsa1/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
sudo vim ~/chroot/home/johnsa1/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
git status
git add chroot/usr/bin/init.sh chroot/home/johnsa1/chroot/usr/bin/init.sh
git add -f chroot/home/johnsa1/chroot/usr/bin/init.sh
git status
git add run.sh
git status
git add -A
git status
git dif f--staged
git diff --staged
git add -f chroot/usr/share/qemu
git status
git add -f chroot/usr/share/qemu-firmware
git add -f chroot/usr/local/share/qemu
git add -f chroot/usr/local/share/qemu-firmware/
git add -f chroot/usr/local/share/qemu-firmware
git reset HEAD chroot/usr/share/qemu
git status
git c 'cp -r qemu_source chroot/home/johnsa1/qemu'
git push
vim rebooter.c
git add -f rebooter.c 
gcc -static rebooter.c -o rebooter
vim rebooter.c
gcc -static rebooter.c -o rebooter
vim rebooter.c
gcc -static rebooter.c -o rebooter
sudo dnf -y install glibc-static
gcc -static rebooter.c -o rebooter
file rebooter
./rebooter 
sudo cp rebooter chroot/home/johnsa1/chroot/usr/bin/
sudo vim ~/chroot/home/johnsa1/run.sh
git add chroot/home/johnsa1/chroot/usr/bin/rebooter
git add -f chroot/home/johnsa1/chroot/usr/bin/rebooter
git status
git add rebooter.c 
git status
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
vim /tmp/run.log
grep pinning /tmp/run.log
sudo vim ~/chroot/home/johnsa1/run.sh
vim ~/run.sh
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
git status
cp /tmp/run.log ./
git add -f run.log 
git status
git add run.sh 
git diff
git status
git diff --staged
git status
git add -f chroot/usr/bin/init.sh 
git add -f chroot/home/johnsa1/run.sh
git status
git c 'nested working'
git push
it status
git status
cd linux-combined/
rm -rf ../outgoing/ && git format-patch -M upstream/master -o ../outgoing/
cd ..
git add -f outgoing/*
git status
vim git-send-email-cover 
cat git-send-email-cover | wc
vim git-send-email-cover 
git status
git diff .bash_history
git add -A
git status
git c 'cover letter update'
vim README.md 
git grep wrmsrl
cd linux-combined/
git grep wrmsrl
vim -t wrmsrl_safe
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
INIT=/usr/bin/init.sh ~/run.sh 2>&1 | tee /tmp/run.log 
git status
git diff
vim arch/x86/kernel/kvm.c
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
vim arch/x86/kernel/kvm.c
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
vim arch/x86/kernel/kvm.c
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
vim arch/x86/kernel/kvm.c
time make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
sudo reboot
