function backup_config --description 'backup my config files here'
	cd ~/myconfig
	cp -rfu ~/.config .
	cp -fu /etc/nginx/nginx.conf .
	cp -fu /etc/ssh/sshd_config .
	cp -fu /etc/hosts.deny .
	git add .
	git commit -m (date "+%Y%m%d-%H:%M:%S")
	git push origin vps
end
