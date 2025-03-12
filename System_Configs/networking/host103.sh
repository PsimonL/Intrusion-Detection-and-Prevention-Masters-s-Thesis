#! /bin/bash

sudo ip route add 10.0.2.0/24 via 10.0.1.1
sudo route -n

curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
source ~/.bashrc
nvm install 20
nvm use 20
npm cache clean --force
rm -rf node_modules package-lock.json
npm install
sudo iptables -A INPUT -p tcp --dport 3000 -j ACCEPT
# sudo netstat -tulnp | grep :3000
# ps -aux | grep "node"
# sudo kill -9
curl http://testmynids.org/uid/index.html
