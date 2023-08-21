cd ~/program/config
cp -rfu ~/.config/mpv .config/
cp -rfu ~/.config/nvim .config/
cp -rfu ~/.config/fish .config/
cp -rfu ~/.config/fcitx5 .config/
cp -rfu ~/.npmrc .
git add .
git status
git commit -m $(date "+%Y%m%d-%H:%M:%S")
git push origin archlinux
