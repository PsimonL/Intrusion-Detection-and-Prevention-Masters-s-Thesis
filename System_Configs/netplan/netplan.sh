#! /bin/bash

sudo vim /etc/netplan/01-network-manager-all.yaml

sudo netplan apply

vim /etc/sysctl.conf
# Uncomment line:
# net.ipv4.ip_forward = 1
grep -n "net.ipv4.ip_forward" /etc/sysctl.conf

# OR
echo 1 > /proc/sys/net/ipv4/ip_forward
cat /proc/sys/net/ipv4/ip_forward


sysctl -p


# TO TEST
ping 172.20.136.2
ping 10.0.1.2

sudo tcpdump -i ens18 > ens18.txt
sudo tcpdump -i ens19 > ens19.txt
sudo tcpdump -i ens20 > ens20.txt
