#! /bin/bash

# Suricata can be managed with demon managers
sudo systemctl enable suricata
sudo systemctl enable suricata.service
sudo systemctl status suricata
sudo systemctl start suricata
sudo systemctl stop suricata

# Suricata configs
ls -la /etc/suricata

# Fetch ET Open rules at /var/lib/suricata/rules/suricata.rules
sudo suricata-update
sudo -s
less /var/lib/suricata/rules/suricata.rules

# Check logs
sudo tail /var/log/suricata/suricata.log

# To edit config file
sudo vi /etc/suricata/suricata.yaml