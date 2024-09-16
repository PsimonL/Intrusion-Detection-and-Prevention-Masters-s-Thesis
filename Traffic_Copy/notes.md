# TaZmen Sniffer Protocol (TZSP) to copy network traffic

Network traffic copy VLAN GUEST from faculty firewall in TZSP format, have been switched to 172.20.136.1 at UDP port 37008

1. TZSP protocol: https://en.wikipedia.org/wiki/TZSP
2. TZSP2PCAP: https://github.com/thefloweringash/tzsp2pcap
3. TZSP Proxy: https://github.com/mciantar/tzsp-proxy/
4. Tshark: tshark -i eth0 -f "udp port 37008" -n -d udp.port==37008,tzsp -w data.pcap -F pcap