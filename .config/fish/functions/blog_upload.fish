function blog_upload --description 'upload lxlsblog'
cd ~/program/lxl66566.github.io
git add -A
bash upload.sh
git push origin code
end
