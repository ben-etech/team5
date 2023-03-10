#script to analysed special variables
#!/bin/sh


logfile=job_results.log
echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Third Parameter : $3"
echo "Fourth Parameter : $4"
echo "Fifth Parameter : $5"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"
echo "The script ran at following time: $(date)">$logfile
