#! /bin/bash

# Go to: https://prometheus.io/download/#prometheus

tar -zxvf prometheus-3.2.0.linux-amd64.tar.gz

vim prometheus/prometheus-3.2.0.linux-amd64/prometheus.yml

# scrape_configs:
#   - job_name: 'node_exporter'
#     static_configs:
#       - targets: ["localhost:9100"]
#         labels:
#           env: "IDS-pentest-lab"

./prometheus --storage.tsdb.retention.time=30d --storage.tsdb.retention.size=20GB --config.file=prometheus.yml
# --web.enable-remote-write-receiver
# Go to: localhost:9090