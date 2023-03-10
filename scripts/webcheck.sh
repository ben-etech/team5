#!/bin/bash
#Script will be used to test if tomcat website is up and running and take actions
if curl -s http://ec2-54-163-216-97.compute-1.amazonaws.com/ ; then
 echo "Nginx is up and running"
 exit 0
else 
 echo "Nginx is down"
 exit 1
 echo "The exit status was captured be 'echo $?'"
fi
