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
sudo -s
less /var/lib/suricata/rules/suricata.rules

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
