#!/bin/bash
# Search for auth.log file in /var/log directory

#variable for the script
team_members=("Joyce" "Brenda" "Benis" "Ben" "Joseph" "Edward")
log=kern.log
directory=/var/log
groupname="test8"

#group_name="Team4_Techops"


#Create a file with the group name
touch ~/scripts/$groupname
sleep 2
#echo "Team 4 group name is: $teamname"

sleep 2
#Check filename kern.log exists in /var/log file
logfile=$(ls $directory | awk 'NR==27 {print $1}')

#check log file exist and file
if [ "$logfile" == "$log" ]; then
     echo "Successfully find filename $logfile in $directory directory"
     exit 0
 else
    echo "The exit status captured was `echo $?`"
    echo "Listing $directory and pipe with awk command failed to locate $log file"
    echo "Filename $log not in $directory directory"
    exit 1
fi

sleep 3

sudo chmod +x $groupname
 sleep 2

find /var/log/kern.log -type f &>> ~/scripts/$groupname
# Collect logs from /var/log/kern.log
#cat $directory$logfile >> ~/scripts/$groupname
#echo "/var/log/kern.log" >> etech15.log

#sudo chmod +x $groupname

#testlog=$(cat $directory/kern.log)
#echo "$(cat $directory/kern.log)" >> ~/scripts/test6
#echo " $testlog " >> $groupname

 #cat /var/log/kern.log >> etech12.log
#Write the name of each team member to the file
#for member in "${team_members[@]}"
#do
 #   echo "$member" >> $group_name
#done
