if status is-interactive
    # Commands to run in interactive sessions can go here
    # bind \t accept-autosuggestion
    bind \t forward-word
end

# pnpm
set -gx PNPM_HOME "/home/absolutex/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

mcfly init fish | source
zoxide init fish | source
starship init fish | source
