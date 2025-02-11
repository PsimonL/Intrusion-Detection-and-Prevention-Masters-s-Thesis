#! /bin/bash

sudo ip route del default
sudo ip route add 10.10.10.2 via 10.10.10.1
sudo route -n