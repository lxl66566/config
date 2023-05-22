function new_trojan_port --description 'change to a new trojan port'
	firewall-cmd --remove-forward-port=port=12138:proto=tcp:toport=$trojan_port --permanent
	firewall-cmd --remove-forward-port=port=12138:proto=udp:toport=$trojan_port --permanent
	set -U trojan_port (math $trojan_port + 1)
	firewall-cmd --add-forward-port=port=12138:proto=udp:toport=$trojan_port --permanent
	firewall-cmd --add-forward-port=port=12138:proto=tcp:toport=$trojan_port --permanent
	set temp (echo $trojan_port | trojan port | tee /dev/tty | sed -n "s/.*端口: \([0-9]*\).*/\1/p")
	echo "port: $temp -> $trojan_port"
	firewall-cmd --reload
	update_blog
end
