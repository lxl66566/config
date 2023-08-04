function backup_config --description 'backup my config on my ArchWSL'
cd ~/myconfig
cp -rfu ~/.config .
cp -fu ~/.tmux.conf .
git add -A
git status
git commit -m (date "+%Y%m%d-%H:%M:%S")
git push origin archwsl
end
