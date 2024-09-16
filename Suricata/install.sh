#! /bin/bash

# Installation
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:oisf/suricata-stable
sudo apt-get update && sudo apt-get install suricata -y
sudo apt install suricata jq

# Post installation
sudo suricata --build-info
sudo systemctl status suricata

# Fetch rules
sudo suricata-update