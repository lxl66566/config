function backup_config --description 'backup my config on my ArchWSL'
cd ~/myconfig
git switch archwsl
cp -rfu ~/.config .
cp -fu ~/.tmux.conf .
cp -fu ~/.ssh/config ./.ssh
git status
git add .
git commit -m (date "+%Y%m%d-%H:%M:%S")
git push origin archwsl
end
