
sudo vim /etc/resolv.conf

# nameserver 8.8.8.8   
# nameserver 8.8.4.4   


sudo apt update && sudo apt upgrade -y
sudo apt install hping3 -y
hping3 --help