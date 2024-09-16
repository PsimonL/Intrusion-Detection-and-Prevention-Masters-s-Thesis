#! /bin/bash

# To add partition disk for /var/log/suricata folder which is default Suricata folder to store logs 
sudo fdisk -l
# Sample output
# Disk /dev/sdb: 100 GiB, 107374182400 bytes, 209715200 sectors
# Disk model: QEMU HARDDISK
# Units: sectors of 1 * 512 = 512 bytes
# Sector size (logical/physical): 512 bytes / 512 bytes
# I/O size (minimum/optimal): 512 bytes / 512 bytes

# Check available disk usage
# Disk free
df -h /var/log/suricata
# Disk usage
du -sh /var/log/suricata

# Disk info
sudo fdisk -l /dev/sdb

# Check file system
df -Th

# 
sudo mkfs.ext4 /dev/sdb

#
sudo mkdir -p /var/log/suricata

#
sudo mount /dev/sdb /var/log/suricata

#
df -h

# Permanent mount
sudo nano /etc/fstab
# Add: /dev/sdb  /var/log/suricata  ext4  defaults  0  2

sudo umount /var/log/suricata
sudo mount -a




