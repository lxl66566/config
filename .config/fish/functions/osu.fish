function osu --description 'start osu-wine'
    set usage "`osu` to run osu, `osu --file` to open osu folder"
    if [ (count $argv) -eq 0 ]
        prime-run ~/game/osu-winello/osu-wine
    else
        switch "$argv[1]"
            case --file
                cd ~/.local/share/osu-wine/osu!
            case '*'
                echo $usage
        end
    end
end
