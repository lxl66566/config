function proxy_con --description 'ArchWSL connect external proxy'
    set usage "usage: proxy_con [option]
options: -c <port>: connect to proxy
         -d: disconnect to proxy"
    if [ (count $argv) -eq 0 ]
        echo $usage
    else
        switch "$argv[1]"
            case '-c'
                if [ (count $argv) -lt 2 ]
                    echo "please input port, example: proxy_con -c 10450"
                else
                    set host_ip (cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
                    set ap "http://$host_ip:$argv[2]"
                    set -gx ALL_PROXY $ap
                    echo "ALL_PROXY set to $ap"
                end
            case '-d'
                set -e ALL_PROXY
            case '*'
                echo $usage
        end
    end
end
