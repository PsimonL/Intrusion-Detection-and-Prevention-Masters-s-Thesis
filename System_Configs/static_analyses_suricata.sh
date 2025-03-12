#!/bin/bash

PCAP_FILE="datasets/Thursday-WorkingHours.pcap"
LOG_DIR="logging/suricata"
SURICATA_CONF="/etc/suricata/suricata.yaml"
RULES_DIR="/var/lib/suricata/"

echo "Starting analyses of ${PCAP_FILE}..."
time sudo suricata -r $PCAP_FILE -l $LOG_DIR -s $RULES_DIR -c $SURICATA_CONF
echo "Analyses finished."