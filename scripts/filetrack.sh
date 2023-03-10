#!/bin/bash
#this script will help us create a file and assign date created with user who runs the script
echo -n  "Please Enter the filename: "
read filename
today=`date +%m-%d-%y`
user=`whoami`
touch $filename.$user.$today
echo " thank you "
echo " welcome to Etech Consulting " >> $filename.$user.$today
df -h $filename.$user.$today
