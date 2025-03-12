#! /bin/bash

wget https://github.com/prometheus/node_exporter/releases/download/v1.9.0/node_exporter-1.9.0.linux-amd64.tar.gz

tar -xvfz node_exporter-1.9.0.linux-amd64.tar.gz

cd node_exporter-1.9.0.linux-amd64 

nohup ./node_exporter > node_exporter.log 2>&1 &

curl http://localhost:9100/metrics

# https://grafana.com/grafana/dashboards/1860-node-exporter-full/
# ID for Dashboard: 1860