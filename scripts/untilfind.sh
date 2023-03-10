#!/bin/bash
# Search for auth.log file in /var/log directory

#variable for the script
log=auth.log
directory=/var/log

#Get filename in /var/log file
logfile=$(ls $directory | awk 'NR==8 {print $1}')

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
 

