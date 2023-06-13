function rm --wraps='echo "This is not the command you are looking for."; false' --description 'alias of trash-put'
  echo "please use tp (trash-put) instead of rm"; false $argv
end
