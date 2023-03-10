#!/bin/bash
password="team5"
user="kelvin"
ips=( 172.31.24.105  172.31.19.104 )
locations=( /tmp /var/log )
for i in ${ips[@]}; do
  for index in ${locations[@]}; do
sshpass -p "$password" scp etech6.log $user@$i:$index
done
done
