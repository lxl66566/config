function update_blog --description 'update my blog from github to vps'
	cd /etc/nginx/lxl66566.github.io
	git pull origin main
	# sed -i "s/MyGitHub/$trojan_port/g" index.html
	nginx -s reload
end
