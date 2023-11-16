cd ~/program/config
git switch archlinux
bash encrypt.sh &
cp -rfu ~/.config/mpv .config/
cp -rfu ~/.config/nvim .config/
cp -rfu ~/.config/fish .config/
cp -rfu ~/.config/fcitx5 .config/
cp -rfu ~/.config/xsettingsd .config/
cp -rfu ~/.npmrc .

cp -fu /etc/pacman.conf etc
cp -fu /etc/fstab etc
cp -fu /etc/updatedb.conf etc
cp -fu /etc/mkinitcpio.conf etc
cp -fu /etc/environment etc
cp -fu /etc/default/grub etc/default
cp -rfu /etc/sysctl.d etc
cp -rfu /etc/udev/rules.d etc/udev
cp -rfu /etc/modprobe.d etc

wait
git add .
git status
git commit -m $(date "+%Y%m%d-%H:%M:%S")
git push origin archlinux
