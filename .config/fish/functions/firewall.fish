function firewall --description 'enable or disable firewalld'
set usage "usage: firewall [option]
options: -e: enable and start firewall
         -d: disable and stop firewall"
if [ (count $argv) -eq 0 ]
	echo $usage
else
	switch $argv[1]
		case '-e'
			systemctl enable firewalld
			systemctl start firewalld
		case '-d'
			systemctl stop firewalld
			systemctl disable firewalld
		case '*'
			echo $usage
	end
end
end
