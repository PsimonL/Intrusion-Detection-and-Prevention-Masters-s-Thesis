#! /bin/bash

# https://grafana.com/grafana/dashboards/11201-sflow-rt-network-interfaces/
# ID for Dashboard: 11201

# Install Docker - Ubuntu (operating system for IDS/IPS)
########################################################
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo docker run hello-world
########################################################

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
