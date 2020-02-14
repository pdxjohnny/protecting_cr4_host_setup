# Paravirtualization Based CR Pinning

```console
git send-email --subject-prefix="RESEND RFC" --annotate --cover-letter --to tglx@linutronix.de --to mingo@redhat.com --to bp@alien8.de --to x86@kernel.org --to pbonzini@redhat.com --cc hpa@zytor.com --cc sean.j.christopherson@intel.com --cc vkuznets@redhat.com --cc wanpengli@tencent.com --cc jmattson@google.com --cc joro@8bytes.org --cc linux-kernel@vger.kernel.org --cc kvm@vger.kernel.org HEAD~2
```

full kernel compile

```console
make olddefconfig && time sudo make -j $(($(nproc)*4)) && sudo make -j $(($(nproc)*4)) modules_install && sudo make install
```

kvm compile with module reload and dmesg log streaming

```console
make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && sudo journalctl --dmesg -f
```

selftests

```console
(cd ~/linux-combined/tools/testing/selftests/kvm/ && nodemon -e c,h --exec 'clear; cd ~/linux-combined && make -j $(($(nproc)*4)) M=arch/x86/kvm/ modules && RELOAD=1 ~/run.sh && make TARGETS="kvm" summary=1 kselftest && cd tools/testing/selftests/kvm/ && ./x86_64/smm_cr_pin_test; test 1')
```

Unit tests

```console
make && QEMU=~/qemu/build/x86_64-softmmu/qemu-system-x86_64 ./run_tests.sh cr_pin; cat logs/cr_pin.log
```

CMDLINE="resume=/dev/sda resumewait" INIT=/usr/bin/init.sh ~/run.sh -no-reboot 2>&1 | tee /tmp/run.log

See https://gist.github.com/pdxjohnny/aed9d495e606a816f4dfa51db6c2ebd4 for kernel hacking notes

Suspend-to-RAM is causing a CR4 fault.

```console
bash-5.0# rtcwake -s 10 -m mem
rtcwake: wakeup from "mem" using /dev/rtc0 at Fri Feb  7 00:55:53 2020
[    5.011569] PM: suspend entry (deep)
[    5.018937] Filesystems sync: 0.001 seconds
[    5.026191] Freezing user space processes ... (elapsed 0.001 seconds) done.
[    5.036739] OOM killer disabled.
[    5.040128] Freezing remaining freezable tasks ... (elapsed 0.001 seconds) done.
[    5.048797] sd 0:0:0:0: [sda] Synchronizing SCSI cache
[    5.050984] sd 0:0:0:0: [sda] Stopping disk
[    5.053095] PM: suspend devices took 0.007 seconds
[    5.055757] ACPI: Preparing to enter system sleep state S3
[    5.057238] PM: Saving platform NVS memory
[    5.058319] Disabling non-boot CPUs ...
[   15.172803] traps: PANIC: double fault, error_code: 0x0
[   15.173838] double fault: 0000 [#1] SMP PTI
[   15.174671] CPU: 0 PID: 247 Comm: rtcwake Tainted: G           O      5.5.0+ #95
[   15.176161] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 0.0.0 02/06/2015
[   15.177678] RIP: 0010:0xfff0
[   15.178257] Code: Bad RIP value.
[   15.178803] RSP: 0018:0000000000000000 EFLAGS: 00010002
[   15.179684] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
[   15.180885] RDX: 00000000000406e3 RSI: 0000000000000000 RDI: 0000000000000000
[   15.182070] RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
[   15.183266] R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
[   15.184459] R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
[   15.185656] FS:  00007f14dff38580(0000) GS:ffff888237c00000(0000) knlGS:0000000000000000
[   15.186991] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   15.187915] CR2: 000000000000ffc6 CR3: 00000002341e2005 CR4: 0000000000360ef0
[   15.189078] Call Trace:
[   15.189481] Modules linked in: kvm_intel(O) kvm(O) irqbypass
[   15.190411] ---[ end trace cb2fc086914647f9 ]---
[   15.191160] RIP: 0010:0xfff0
[   15.191633] Code: Bad RIP value.
[   15.192164] RSP: 0018:0000000000000000 EFLAGS: 00010002
[   15.193010] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
[   15.194162] RDX: 00000000000406e3 RSI: 0000000000000000 RDI: 0000000000000000
[   15.195312] RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
[   15.196465] R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
[   15.197623] R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
[   15.198776] FS:  00007f14dff38580(0000) GS:ffff888237c00000(0000) knlGS:0000000000000000
[   15.200085] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   15.201013] CR2: 000000000000ffc6 CR3: 00000002341e2005 CR4: 0000000000360ef0
[   15.202473] ------------[ cut here ]------------
[   15.203241] WARNING: CPU: 0 PID: 0 at kernel/time/timekeeping.c:754 ktime_get+0x85/0x90
[   15.204541] Modules linked in: kvm_intel(O) kvm(O) irqbypass
[   15.205462] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G      D    O      5.5.0+ #95
[   15.206656] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 0.0.0 02/06/2015
[   15.207969] RIP: 0010:ktime_get+0x85/0x90
[   15.208621] Code: d2 48 85 c2 8b 15 2b 0e cc 01 48 0f 45 c5 44 3b 25 00 0e cc 01 75 a3 48 0f af d0 48 8d 04 32 48 d3 e8 48 01 d8 5b 5d 41 5c c3 <0f> 0b eb 8a f3 90 eb 88 0f 1f 00 0f 1f 44 00 00 41 54 55 31 ed 53
[   15.211637] RSP: 0018:ffffffff82603e98 EFLAGS: 00010002
[   15.212476] RAX: 0000000000000001 RBX: ffff888237c1e9e0 RCX: ffff888235a07480
[   15.213633] RDX: 0000000000000000 RSI: 0000000000000009 RDI: ffff888235a40000
[   15.214790] RBP: 00000000000000d0 R08: ffff888235a40a38 R09: 00000000000000f4
[   15.215948] R10: 0000000000000000 R11: 0000000000031360 R12: ffffffff82613840
[   15.217103] R13: 00000000bfec1810 R14: 00000000bfec1818 R15: 00000000bfec1be0
[   15.218468] FS:  0000000000000000(0000) GS:ffff888237c00000(0000) knlGS:0000000000000000
[   15.219777] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   15.220713] CR2: 000000000000ffc6 CR3: 000000000360a006 CR4: 0000000000360ef0
[   15.221887] Call Trace:
[   15.222275]  tick_nohz_idle_enter+0x2f/0x50
[   15.222946]  do_idle+0x3f/0x260
[   15.223460]  cpu_startup_entry+0x19/0x20
[   15.224105]  start_kernel+0x534/0x551
[   15.224706]  secondary_startup_64+0xa4/0xb0
[   15.225393] ---[ end trace cb2fc086914647fa ]---
[   15.226164] ------------[ cut here ]------------
[   15.226929] WARNING: CPU: 0 PID: 0 at kernel/rcu/tree.c:560 rcu_eqs_enter.constprop.0+0xb4/0xc0
[   15.228462] Modules linked in: kvm_intel(O) kvm(O) irqbypass
[   15.229388] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G      D W  O      5.5.0+ #95
[   15.230582] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 0.0.0 02/06/2015
[   15.231897] RIP: 0010:rcu_eqs_enter.constprop.0+0xb4/0xc0
[   15.232768] Code: 0f c1 83 d8 00 00 00 65 8b 15 88 77 eb 7e 65 48 8b 04 25 c0 8b 01 00 89 90 84 03 00 00 5b 5d c3 48 89 ef e8 ae fe ff ff eb bd <0f> 0b e9 75 ff ff ff 0f 1f 44 00 00 0f 1f 44 00 00 65 8b 05 54 77
[   15.235773] RSP: 0018:ffffffff82603eb0 EFLAGS: 00010002
[   15.236617] RAX: ffff888237c2bb80 RBX: 000000000002bb80 RCX: 0000000000000000
[   15.237776] RDX: 4000000000000000 RSI: ffffffff82603e68 RDI: 00000001251b1ead
[   15.238932] RBP: ffffffff82613840 R08: 0000000000000001 R09: 00000000000000f4
[   15.240093] R10: 0000000000000000 R11: 0000000000031360 R12: ffffffff82613840
[   15.241251] R13: 0000000000000000 R14: 0000000000000000 R15: ffffffff82613840
[   15.242409] FS:  0000000000000000(0000) GS:ffff888237c00000(0000) knlGS:0000000000000000
[   15.243718] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   15.244652] CR2: 000000000000ffc6 CR3: 000000000360a006 CR4: 0000000000360ef0
[   15.245819] Call Trace:
[   15.246228]  do_idle+0x1f0/0x260
[   15.246785]  cpu_startup_entry+0x19/0x20
[   15.247436]  start_kernel+0x534/0x551
[   15.248042]  secondary_startup_64+0xa4/0xb0
[   15.248721] ---[ end trace cb2fc086914647fb ]---
```
