sudo grubby --list-kernsl
sudo grubby --list-kernels
sudo grubby
sudo grubby --help
sudo grubby --set-default=/boot/vmlinuz-5.2.17-200.fc30.x86_64 
sudo reboot
uname -a
cd
git diff
cd ../linux-combined/
git log
git log -p
git rebase -i HEAD~9
git grep pin_allowed
git grep pin_allow
git grep PIN_ALLOWED
vim arch/x86/kvm/x86.c
git diff
vim arch/x86/kvm/x86.c
git grep PIN_ALLOWED
vim Documentation/virt/kvm/msr.rst
git status
git diff
git add -A
git rebase --continue
vim ../README.md 
rm -rf ../outgoing/ && git format-patch -o ../outgoing/ -M kvm/next
git status
cd ../
git diff
git status
git add outgoing/
find outgoing/ -name \*.patch -exec sed -i -e 's/HIGH/ONE/g' -e 's/high/one/g' -e 's/LOW/ZERO/g' -e 's/low/zero/g' {} \;
git diff
find outgoing/ -name \*.patch -exec sed -i -e 's/alzero/allow/g' {} \;
git diff
find outgoing/ -name \*.patch -exec sed -i -e 's/Alzero/Allow/g' {} \;
find outgoing/ -name \*.patch -exec sed -i -e 's/ALZERO/ALLOW/g' {} \;
git diff
find outgoing/ -name \*.patch -exec sed -i -e 's/folzeroing/following/g' {} \;
find outgoing/ -name \*.patch -exec sed -i -e 's/slowly/szeroly/g' {} \;
git diff
find outgoing/ -name \*.patch -exec sed -i -e 's/slowly/slowly/g' {} \;
git diff
find outgoing/ -name \*.patch -exec sed -i -e 's/szeroly/slowly/g' {} \;
git diff
find outgoing/ -name \*.patch -exec sed -i -e 's/szero/slow/g' {} \;
git diff
git status
git commit -sm 'pre high/low -> one/zero'
git add outgoing/
git status
git diff
git commit -sm 'high/low -> one/zero'
