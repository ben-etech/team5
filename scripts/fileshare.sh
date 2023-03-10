#!/bin/bash
ips=( 172.31.24.105  172.31.19.104 )
user=ubuntu

for i in ${ips[@]}; do
scp -i key filecheck2 $user@$i:/tmp 
done 
