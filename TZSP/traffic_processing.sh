#! /bin/bash

git clone https://github.com/thefloweringash/tzsp2pcap
cd tzsp2pcap
make
sudo ./tzsp2pcap -i ens18 -p 37008 -o data.pcap

git clone https://github.com/mciantar/tzsp-proxy
cd tzsp-proxy
make
sudo ./tzsp-proxy -i ens18 -p 37008 -d 172.20.136.1 -t 37008

sudo apt-get install tshark
sudo tshark -i ens18 -f "udp port 37008" -n -d udp.port==37008,tzsp -w data.pcap -F pcap
