function backup_config --description 'backup my config on my ArchWSL'
cd ~/myconfig
cp -rfu ~/.config .
cp -fu ~/.tmux.conf .
git add .
git commit -m (date "+%Y%m%d-%H:%M:%S")
git status
git push origin archwsl
end
