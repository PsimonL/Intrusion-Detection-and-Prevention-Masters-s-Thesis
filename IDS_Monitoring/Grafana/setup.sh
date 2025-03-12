#! /bin/bash

# Go to: https://grafana.com/grafana/download
wget https://dl.grafana.com/oss/release/grafana-11.5.1.linux-amd64.tar.gz
tar -zxvf grafana-11.5.1.linux-amd64.tar.gz

cd grafana-v11.5.1/ 
./bin/grafana server

# Go to: http://localhost:3000/login
# Default user:
# - username: admin
# - password: admin

ID_PROCESS_GRAFANA=000
# To kill
ps -aux | grep "grafana"
kill $ID_PROCESS_GRAFANA

# Set time for proper Visualisations
sudo timedatectl set-timezone Europe/Warsaw

# Copy ID of selected dashboard than paste in Dashboard Creation process in Grafana
# https://grafana.com/grafana/dashboards/
# Selected Dashboards: 1860, 11201