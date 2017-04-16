virsh net-define /etc/libvirt/qemu/networks/br1.xml &&
virsh net-start br1 &&
#port forwarding nat and rdp
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 3302 -j DNAT --to-destination 100.100.1.2:3389 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 3302 -j DNAT --to-destination 100.100.1.2:3389 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 3303 -j DNAT --to-destination 100.100.1.3:3389 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 3303 -j DNAT --to-destination 100.100.1.3:3389 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 3304 -j DNAT --to-destination 100.100.1.4:3389 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 3304 -j DNAT --to-destination 100.100.1.4:3389 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 3305 -j DNAT --to-destination 100.100.1.5:3389 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 3305 -j DNAT --to-destination 100.100.1.5:3389 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 3306 -j DNAT --to-destination 100.100.1.6:3389 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 3306 -j DNAT --to-destination 100.100.1.6:3389 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 3307 -j DNAT --to-destination 100.100.1.7:3389 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 3307 -j DNAT --to-destination 100.100.1.7:3389 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 3308 -j DNAT --to-destination 100.100.1.8:3389 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 3308 -j DNAT --to-destination 100.100.1.8:3389 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 3309 -j DNAT --to-destination 100.100.1.9:3389 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 3309 -j DNAT --to-destination 100.100.1.9:3389 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 3310 -j DNAT --to-destination 100.100.1.10:3389 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 3310 -j DNAT --to-destination 100.100.1.10:3389 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 3311 -j DNAT --to-destination 100.100.1.11:3389 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 3311 -j DNAT --to-destination 100.100.1.11:3389 &&
iptables -I FORWARD -m state -d 100.100.1.0/24 --state NEW,RELATED,ESTABLISHED -j ACCEPT &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 222 -j DNAT --to-destination 100.100.1.2:22 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 222 -j DNAT --to-destination 100.100.1.2:22 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 223 -j DNAT --to-destination 100.100.1.3:22 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 223 -j DNAT --to-destination 100.100.1.3:22 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 224 -j DNAT --to-destination 100.100.1.4:22 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 224 -j DNAT --to-destination 100.100.1.4:22 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 225 -j DNAT --to-destination 100.100.1.5:22 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 225 -j DNAT --to-destination 100.100.1.5:22 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 226 -j DNAT --to-destination 100.100.1.6:22 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 226 -j DNAT --to-destination 100.100.1.6:22 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 227 -j DNAT --to-destination 100.100.1.7:22 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 227 -j DNAT --to-destination 100.100.1.7:22 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 228 -j DNAT --to-destination 100.100.1.8:22 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 228 -j DNAT --to-destination 100.100.1.8:22 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 229 -j DNAT --to-destination 100.100.1.9:22 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 229 -j DNAT --to-destination 100.100.1.9:22 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 2210 -j DNAT --to-destination 100.100.1.10:22 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 2210 -j DNAT --to-destination 100.100.1.10:22 &&
iptables -t nat -I PREROUTING -p tcp -d 62.210.169.61 --dport 2211 -j DNAT --to-destination 100.100.1.11:22 &&
iptables -t nat -I PREROUTING -p udp -d 62.210.169.61 --dport 2211 -j DNAT --to-destination 100.100.1.11:22 &&
iptables -I FORWARD -m state -d 100.100.1.1/24 --state NEW,RELATED,ESTABLISHED -j ACCEPT
