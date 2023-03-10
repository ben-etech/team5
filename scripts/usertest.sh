#!/bin/bash

echo -n " Please enter the username to be checked: "
read username
echo " Search Engine Activated!!..searching.. "

if grep $username /etc/passwd; then
echo " The user account for $username exist in the system.. "
echo " The user $username is part of Etech ConsultingDevops course "
elif ls -d /home/$username/; then
echo " The directory for $username exist in the system "
echo " Even though the $username acount does not exist "
else
echo " The user directory does not exist in the system "
echo " The user account for $username does not exist "
fi

