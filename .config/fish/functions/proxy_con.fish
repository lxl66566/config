function proxy_con -d "(dis)connect proxy"
  set usage "usage: proxy_con [option]
options: -c: connect to proxy
         -d: disconnect to proxy"
  if [ (count $argv) -eq 0 ]
    echo $usage
  else
    switch "$argv[1]"
      case '-c'
        systemctl --user enable --now v2raya-lite
        set -Ux all_proxy http://127.0.0.1:20171
      case '-d'
        systemctl --user disable --now v2raya-lite
        set -Ux all_proxy http://127.0.0.1:12345
      case '*'
        echo $usage
    end
    set -Ux ALL_PROXY $all_proxy
    set -Ux HTTP_PROXY $all_proxy
    set -Ux HTTPS_PROXY $all_proxy
  end
end
