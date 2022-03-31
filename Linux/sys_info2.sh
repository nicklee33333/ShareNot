#!/bin/bash
output=$HOME/research/sys_info.txt

#mkdir ~/research 2>/dev/null
if [ ! -d $HOME/research ]
then
mkdir $HOME/research
else	
	echo "/home/sysadmin/research folder does exist"
fi


if [ -f $output ]
then 
rm $output
fi


echo "A Quick System Audit Script" >> $output
echo -e "The date is: $(date)" >> $output
echo "Machine Type Info:" >> $output
echo $MACHTYPE >> $output
echo -e "Uname info: $(uname) \n" >> $output
echo -e "IP Info: $(ip addr | head -9 | tail -1) \n" >> $output
echo "Hostname: $(hostname)" >> $output

echo -e "\nExec Files:" >> $output
find ~/ -type f -perm 777 >> $output

echo -e "nTop 10 Processes:" >> $output
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head