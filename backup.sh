cd ~/myconfig
cp -rfu ~/.config .
cp -fu ~/.tmux.conf .
cp -fu ~/.zshrc .
git add .
git status
git commit -m $(date "+%Y%m%d-%H:%M:%S")
git push origin archwsl
