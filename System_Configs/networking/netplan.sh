#! /bin/bash

# Netplan is a utility developed by Canonical, the company behind Ubuntu. 
# It provides a network configuration abstraction over the currently supported two “backend” system (“renderer” in Netplan terminology): 
# networkd and NetworkManager.

sudo vim /etc/netplan/01-network-manager-all.yaml

sudo netplan apply

vim /etc/sysctl.conf
# Uncomment line:
# net.ipv4.ip_forward = 1
grep -n "net.ipv4.ip_forward" /etc/sysctl.conf
# interface ens18 is interface for ip 172.20.136.1, which have access to Internet 
sudo iptables -t nat -A POSTROUTING -o ens18 -s 10.10.10.0/24 -j MASQUERADE
sudo iptables -t nat -L -v -n
# To reverse above rule
sudo iptables -t nat -D POSTROUTING -o ens18 -s 10.10.10.0/24 -j MASQUERADE
sudo iptables -t nat -L -v -n
# To make iptable rules permament, even after restart
sudo apt install iptables-persistent
sudo netfilter-persistent save


# OR
echo 1 > /proc/sys/net/ipv4/ip_forward
cat /proc/sys/net/ipv4/ip_forward

# Enforce changes
sysctl -p


# Check if data is being gathered
sudo tcpdump -i ens18 > ens18.txt
sudo tcpdump -i ens19 > ens19.txt
sudo tcpdump -i ens20 > ens20.txt
