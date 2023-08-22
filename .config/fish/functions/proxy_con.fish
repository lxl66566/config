function proxy_con -d "(dis)connect proxy"
  set usage "usage: proxy_con [option]
options: -c: connect to proxy
         -d: disconnect to proxy"
  if [ (count $argv) -eq 0 ]
    echo $usage
  else
    switch "$argv[1]"
      case '-c'
        nohup v2raya --lite > /dev/null &
      case '-d'
        pgrep v2raya | xargs kill -9
      case '*'
        echo $usage
    end
  end
end
