#! /bin/bash

# Instlal Wazuh server
curl -s https://packages.wazuh.com/key/GPG-KEY-WAZUH | gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/wazuh.gpg --import && chmod 644 /usr/share/keyrings/wazuh.gpg
echo "deb [signed-by=/usr/share/keyrings/wazuh.gpg] https://packages.wazuh.com/4.x/apt/ stable main" | tee -a /etc/apt/sources.list.d/wazuh.list
sudo apt update
sudo apt install wazuh-manager wazuh-api
sudo systemctl enable --now wazuh-manager
sudo systemctl status wazuh-manager


# Install Wazuh Agent
sudo apt install wazuh-agent
sudo vim /var/ossec/etc/ossec.conf
## Find section "server" and change address to localhost:
# <server>
#   <address>127.0.0.1</address>
# </server>
sudo systemctl enable --now wazuh-agent
sudo systemctl status wazuh-agent
sudo vim /var/ossec/etc/ossec.conf
## Find section "localfile"  and add path to suricata logs:
# <localfile>
#   <log_format>json</log_format>
#   <location>/var/log/suricata/eve.json</location>
# </localfile>
## Add all logs file for Zeek, sample logs file:
# <localfile>
#   <log_format>syslog</log_format>
#   <location>/opt/zeek/logs/current/conn.log</location>
# </localfile>

# <localfile>
#   <log_format>syslog</log_format>
#   <location>/opt/zeek/logs/current/http.log</location>
# </localfile>

# <localfile>
#   <log_format>syslog</log_format>
#   <location>/opt/zeek/logs/current/weird.log</location>
# </localfile>

sudo systemctl restart wazuh-agent

# Go to dashboard:
## http://localhost:5601

## Alerts:
# TODO