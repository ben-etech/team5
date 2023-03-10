#!/bin/bash
#Mount a disk
sudo mkdir /mnt/test
sudo mkfs.ext2 /dev/xvdf
sudo mount /dev/xvdf /mnt/test
echo "/dev/xvdf /mnt/test ext2 default 0 1" | sudo tee -a /etc/fstab
lsblk
