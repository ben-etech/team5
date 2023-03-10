#!/bin/bash
#Unmount one volume disk
sudo umount /dev/xvdf /mnt/test
sleep 3
checkunmount=$(lsblk /dev/xvdf | awk 'NR==2 {print $7}')
name=""		
#check disk successfully umounted
if [ "$checkunmount" == "$name" ]; then	
echo "Successfully unmount drive on linux using shell bash scripting" 
else
echo "UnSuccessfully unmount drive on linux using shell bash scripting"
fi	
#delete entries in etc/fstab
cat /etc/fstab | sed '/mnt/d'
