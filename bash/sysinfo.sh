#!/bin/bash
#Scripting Lab 1
#Bash Assignment
echo 'Hostname'
echo 'pc200507913'
#system information command
hostnamectl
#ipv4 address command
echo 'ipv4 address'


ip a s ens33 | grep -w inet | awk '{print $2}'

#for checking available and total space
df

exit
#End of the script

