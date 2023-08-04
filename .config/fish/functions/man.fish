function man --description 'add tldr selection'
    read -n 1 -P 'Use tldr instead of man? (y/n) ' answer
    switch $answer
        case n N
            /usr/sbin/man "$argv"
        case '' y Y
            tldr "$argv"
    end
end
