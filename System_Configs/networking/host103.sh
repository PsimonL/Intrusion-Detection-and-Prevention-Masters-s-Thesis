#! /bin/bash

sudo ip route add 10.0.2.0/24 via 10.0.1.1
sudo route -n