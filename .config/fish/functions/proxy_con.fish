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
        set -Ux ALL_PROXY $all_proxy
        set -Ux HTTP_PROXY $all_proxy
        set -Ux HTTPS_PROXY $all_proxy
      case '-d'
        systemctl --user disable --now v2raya-lite
        set -e ALL_PROXY 
        set -e HTTP_PROXY 
        set -e HTTPS_PROXY 
        set -e all_proxy
      case '*'
        echo $usage
    end
  end
end
