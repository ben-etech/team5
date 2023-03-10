#!/bin/bash
#Unmount one volume disk
sudo umount /dev/xvdf /mnt/test
sleep 3
checkunmount=$(lsblk /dev/xvdf | awk 'NR==2 {print $7}')
#if [ "$checkunmount" == -z "$checkunmount" ]; then	
#echo "Successfully unmount drive on linux using umount" 
#else
#echo "UnSuccessfully unmount drive on linux using umount"
#fi
echo "The mount point is empty: $checkunmount"
cat /etc/fstab | sed '/mnt/d'
lsblk
