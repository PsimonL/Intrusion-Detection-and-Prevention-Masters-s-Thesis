#! /bin/bash

# Suricata can be managed with demon managers
sudo systemctl enable suricata
sudo systemctl enable suricata.service
sudo systemctl status suricata
sudo systemctl start suricata
sudo systemctl stop suricata
sudo systemctl restart suricata

# Suricata configs
ls -la /etc/suricata

# Fetch ET Open rules at /var/lib/suricata/rules/suricata.rules
sudo suricata-update
sudo -i
less /var/lib/suricata/rules/suricata.rules
# To list sources
sudo suricata-update list-sources

# Check Suricata logs
sudo tail /var/log/suricata/suricata.log
# To check statistics
sudo tail -f /var/log/suricata/stats.log

# To edit config file
sudo vi /etc/suricata/suricata.yaml
# After any changes
sudo systemctl restart suricata
# Or
sudo service suricata restart

# Test Suricata configuration
sudo suricata -T -c /etc/suricata/suricata.yaml -v

# To run Suricata with tshark pcap file
cd /var/log/suricata/tshark
# Suricata will, by default, place the interface it is enabled on in promiscuous mode.
sudo ip link set $INTERFACE_NAME promisc on
sudo suricata -c /etc/suricata/suricata.yaml -r data.pcap

# Check alerts in JSOn format
sudo cat /var/log/suricata/tshark/eve.json | jq .
