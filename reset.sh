read -n 1 -p "Are you sure to clean git and push force? (y/N) " answer
case ${answer:0:1} in
    y|Y )
        rm -rf .git
        git init
        git remote add origin git@github.com:lxl66566/config.git
        git add -A
        git commit -m "clean git"
        git branch -M archlinux
        git push origin main -f &
        wait
        exec /bin/bash
    ;;
    * )
        echo "do nothing"
        exit 1
    ;;
esac