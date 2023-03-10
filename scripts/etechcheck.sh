#!/bin/bash
echo " script to analyse other scripts "
./scriptname1.sh
status=$?
if [ "$status" -eq 0 ]; then
  echo "scriptname1.sh ran successfully"
else
  echo "scriptname1 failure"
fi 
