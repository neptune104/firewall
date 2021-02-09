###### Access Rules ETC
iptables -I INPUT -s 220.70.71.231/32 -j ACCEPT
iptables -I INPUT -s 110.45.156.0/24 -j ACCEPT
iptables -I INPUT -i lo -j ACCEPT
iptables -I INPUT -s 198.51.100.0/24 -j ACCEPT

###### PORT
iptables -I INPUT -p tcp -m tcp --dport 80 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 7500 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 7381 -j ACCEPT

###### DC/OS PORT TCP ALL NODE
iptables -I INPUT -p tcp -m tcp --dport 61003 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 61091 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 61092 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 61420 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 62080 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 62501 -j ACCEPT

###### DC/OS PORT UDP ALL NODE
iptables -I INPUT -p udp -m udp --dport 53 -j ACCEPT
iptables -I INPUT -p udp -m udp --dport 61053 -j ACCEPT
iptables -I INPUT -p udp -m udp --dport 64000 -j ACCEPT

###### DNS
iptables -I INPUT -s 168.126.63.1/32 -j ACCEPT
iptables -I INPUT -s 8.8.8.8/32 -j ACCEPT

###### kbsys
iptables -I INPUT -s 14.49.38.55/32 -j ACCEPT

###### docker hub
iptables -I INPUT -s 54.236.165.68/32 -j ACCEPT
iptables -I INPUT -s 52.20.56.50/32 -j ACCEPT
iptables -I INPUT -s 23.22.155.84/32 -j ACCEPT
iptables -I INPUT -s 54.236.131.166/32 -j ACCEPT
iptables -I INPUT -s 52.5.11.128/32 -j ACCEPT
iptables -I INPUT -s 3.218.162.19/32 -j ACCEPT
iptables -I INPUT -s 3.211.199.249/32 -j ACCEPT
iptables -I INPUT -s 107.23.149.57/32 -j ACCEPT
iptables -I INPUT -s 104.18.125.25/32 -j ACCEPT

###### DC/OS MASTER Only
iptables -I INPUT -p tcp -m tcp --dport 443 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 2181 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 3888 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 2888 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 5050 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 7070 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 8080 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 8101 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 8123 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 8181 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 8200 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 8201 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 8443 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 8888 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 9090 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 9443 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 9990 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 15055 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 15101 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 15201 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 26257 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 61053 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 61430 -j ACCEPT

###### ALL DENY
iptables -A INPUT -s 0.0.0.0/0 -j DROP
