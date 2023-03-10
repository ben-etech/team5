#!/bin/bash
password="team5"
user="kelvin"
ips=( 172.31.24.105  172.31.19.104 )
for i in ${ips[@]}; do
sshpass -p "$password" scp etech.log $user@$i:/tmp
done
