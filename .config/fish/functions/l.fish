function l --wraps=ls --wraps='ls -alF --color=auto' --wraps='exa --long --color-scale --binary --header --time-style=long-iso' --description 'alias l=exa --all --long --color-scale --binary --header --time-style=long-iso'
  exa --all --long --color-scale --binary --header --time-style=long-iso $argv
        
end
