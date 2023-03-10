#!/bin/bash
#Script to mount ebs volume in EC2 Instance

#variables
namemountpoint=/mnt/test
mountdirectory=/dev/xvdf

sudo mkdir /mnt/test
sudo mkfs.ext2 /dev/xvdf
sudo mount /dev/xvdf /mnt/test
echo "$mountdirectory $namemountpoint ext2 default 0 1" | sudo tee -a /etc/fstab
sleep 2

#check disk successfully mounted
checkmount=$(lsblk $mountdirectory | awk 'NR==2 {print $7}')

if [ "$checkmount" == "$namemountpoint" ]; then
echo "The exit status captured was `echo $?`"
echo "Successfully mount drive $mountdirectory and $namemountpoint on linux using shell bash scripting"
else
echo "The exit status captured was `echo $?`"	
echo "UnSuccessfully mount drive $mountdirectory and $namemountpoint on linux using shell bash scripting"
fi
