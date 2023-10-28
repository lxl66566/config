cd ~/program/config
git switch archlinux
bash encrypt.sh &
cp -rfu ~/.config/mpv .config/
cp -rfu ~/.config/nvim .config/
cp -rfu ~/.config/fish .config/
cp -rfu ~/.config/fcitx5 .config/
cp -rfu ~/.npmrc .
find /etc -name "fstab" \
          -name "updatedb.conf" \
          -name "mkinitcpio.conf" \
          -name "pacman.conf" \
          -name "environment" \
          -exec cp -fu {} etc \;
wait
git add .
git status
git commit -m $(date "+%Y%m%d-%H:%M:%S")
git push origin archlinux
