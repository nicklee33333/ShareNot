#!/bin/bash
	mkdir ~/research 2>/dev/null
	echo "A Quick System Audit Script" >> ~/research/sys_info.txt
	echo -e "The date is: $(date)" >> ~/research/sys_info.txt
	echo "Machine Type Info:" >> ~/research/sys_info.txt
	echo $MACHTYPE >> ~/research/sys_info.txt
	echo -e "Uname info: $(uname) \n" >> ~/research/sys_info.txt
	echo -e "IP Info: $(ip addr | head -9 | tail -1) \n" >> ~/research/sys_info.txt
	echo "Hostname: $(hostname)" >> ~/research/sys_info.txt
	
	echo -e "\nExec Files:" >> ~/research/sys_info.txt
	find ~/ -type f -perm 777 >> ~/research/sys_info.txt
	
	echo -e "nTop 10 Processes:" >> ~/research/sys_info.txt
	ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head