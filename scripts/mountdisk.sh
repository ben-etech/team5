#!/bin/bash
#Mount a disk
sudo mkdir /mnt/test
sudo mkfs.ext2 /dev/xvdf
sudo mount /dev/xvdf /mnt/test
echo "/dev/xvdf /mnt/test ext2 default 0 1" | sudo tee -a /etc/fstab
sleep 2
#checkmount=$(lsblk /dev/xvdf | awk 'NR==2 {print $7}')
checkmount=$(lsblk | awk 'NR==14 {print $7}')
namemountpoint="/mnt/test"	
if [ "$checkmount" == "$namemountpoint" ]; then	
echo "Successfully mount drive on linux using mount" 
else
echo "UnSuccessfully mount drive on linux using mount"
fi	
