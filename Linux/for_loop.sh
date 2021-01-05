#!/bin/bash

can_prov=("British_Columbia" "Ontario" "Quebec" "Alberta" "Manitoba")
num=$(echo {0..9})
lout=$(ls)
execi=$(find /home -type f -perm 777 2> /dev/null)
paths=('/etc/shadow' '/etc/passwd')
for p in ${can_prov[@]}
do
	if [ $p == "Ontario" ]
	then
		echo "Ontario is the best"
	else 
		echo "I am fond of Ontario"
	#	echo $p
	fi
done
for num in ${num[@]}
do
	if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
	then
 		echo $num
	fi
done
echo "___________________________________"; sleep 4
for files in ${lout[@]}
do
	echo $files
done
echo "_____________________________________"; sleep 4
for execi in ${execi[@]}
do 
	echo $exeoi
done
echo "________________________________________"; sleep 3


