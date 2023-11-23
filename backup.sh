cd /home/absolutex/program/config
git switch archlinux
sudo bash encrypt.sh &
cp -rfu /home/absolutex/.config/mpv .config/
cp -rfu /home/absolutex/.config/nvim .config/
cp -rfu /home/absolutex/.config/fish .config/
cp -rfu /home/absolutex/.config/fcitx5 .config/
cp -rfu /home/absolutex/.config/xsettingsd .config/
cp -rfu /home/absolutex/.npmrc .

cp -fu /etc/pacman.conf etc
cp -fu /etc/fstab etc
cp -fu /etc/updatedb.conf etc
cp -fu /etc/mkinitcpio.conf etc
cp -fu /etc/environment etc
cp -fu /etc/default/grub etc/default
cp -rfu /etc/sysctl.d etc
cp -rfu /etc/udev/rules.d etc/udev
cp -rfu /etc/modprobe.d etc

cp -rfu /var/lib/waydroid/waydroid_base.prop var/lib/waydroid

wait
git add .
git status
git commit -m $(date "+%Y%m%d-%H:%M:%S")
git push origin archlinux
