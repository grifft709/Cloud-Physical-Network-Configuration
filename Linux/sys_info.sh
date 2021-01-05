#!/bin/bash

#Variable(s)
reports=~/research/sys_info.txt
ipaddy=$(hostname -I | awk '{print $1}')

#Check if directory exists, create directory if it doesn't exist
if [ ! -d ~/research ]
then
	mkdir ~/research/ 
else
	echo "Directory exists"
fi

#Check if file exists. Delete file if it exists
if [ -f ~/research/sys_info.txt ]
then
	echo "Removing $reports"
	rm ~/research/sys_info.txt
else
	echo "File does not exist"
fi

#	echo "First Bash Script" > ~/research/sys_info.txt
#echo "Hello, today is $(date)" >> ~/research/sys_info.txt
#echo "The kernel name is $(uname)" >> ~/research/sys_info.txt
#echo "The name of this machine is $(hostname)"> ~/research/sys_info.txt
echo " The IP address for this machine is $ipaddy" 
#echo "DNS info is $(nslookup)" >> ~/research/sys_info.txt
#find /home -type f -perm 777 -print >> ~/research/sys_info.txt
#echo " The top 10 processes are: \n $(ps aux | head)" >> ~/research/sys_info.txt
