#! /bin/bash

/usr/bin/suricata-update && /usr/bin/suricata -T >> /var/log/suricata-cron.log 2>&1