function man --description 'add tldr selection'
    read -n 1 -P 'Use tldr instead of man? (y/n) ' answer
    switch $answer
        case n N
            /usr/bin/man $argv
        case '*'
            tldr $argv
    end
end
