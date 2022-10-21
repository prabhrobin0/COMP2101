#!/bin/bash

# Data
DISKFREE=$(df -h / | grep "dev/sda" | awk '{print $4}')
HOST=$(hostname --FQDN)
    
OSNV=$(hostnamectl | grep -h "Operating System" | awk '{print $3" "$4" "$5}')

IPAD=$(hostname -i)
       


# Data in template provided
echo "Report for myvm"
echo "==============="
echo "FQDN: $HOST"
echo "Operating System name and version: $OSNV"
echo "IP Address: $IPAD" 
echo "Root Filesystem Free Space: $DISKFREE"
echo "==============="
