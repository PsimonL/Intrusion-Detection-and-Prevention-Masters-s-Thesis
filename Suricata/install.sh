#! /bin/bash

sudo apt-get install software-properties-common
sudo add-apt-repository ppa:oisf/suricata-stable
sudo apt-get update && sudo apt-get install suricata -y