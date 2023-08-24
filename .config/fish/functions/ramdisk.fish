function ramdisk -d "(un)mount ramdisk"
  set usage "usage: ramdisk [option]
options: -m: mount ramdisk
         -u: unmount ramdisk"
  set position /mnt/tmp
  if [ (count $argv) -eq 0 ]
    echo $usage
  else
    switch "$argv[1]"
      case '-m'
        mkdir -p $position
        sudo mount -t ramfs -o size=10g ramfs $position
        sudo chmod -R 777 $position
      case '-u'
        sudo unmount $position
      case '*'
        echo $usage
    end
  end
end
