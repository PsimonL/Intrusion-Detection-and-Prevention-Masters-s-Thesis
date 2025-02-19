#! /bin/bash

# https://grafana.com/grafana/dashboards/11201-sflow-rt-network-interfaces/
# ID for Dashboard: 11201

# Install Docker

# Overall stats
docker run -d -p 6343:6343/udp -p 8008:8008 sflow/prometheus

# More detiled stats
docker run -d -p 6343:6343/udp -p 8008:8008 sflow/prometheus -Dsnmp.ifname=yes

# Paste into prometheus.yaml
# scrape_configs:
#   - job_name: 'sflow-rt-analyzer'
#     metrics_path: /prometheus/analyzer/txt
#     static_configs:
#       - targets: ['localhost:8008']  
#   - job_name: 'sflow-rt-metrics'
#     metrics_path: /prometheus/metrics/ALL/ALL/txt
#     static_configs:
#       - targets: ['localhost:8008']  
#     metric_relabel_configs:
#       - source_labels: ['agent', 'datasource']
#         separator: ':'
#         target_label: instance
