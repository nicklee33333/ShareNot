#!/bin/bash
	
	#echo {0..9} is same as: 0 1 2 3 4 5 6 7 8 9 = ${nums[@]}
	#nums is a variable: $(echo {0..9})
	nums=$(echo {0..9})

	#num is the variable: in ${nums[@]}

	#num is a variable: same as $(echo {0..9}) = 0 1 2 3 4 5 6 7 8 9 
	for num in ${nums[@]}
	
	#if you start command with "do", need to close out with "done"
	do
		#"if" statement needs "fi" to close the open end
		if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
		then
		  echo $num
		 #"fi" to close the open end of the "if" statement
		fi
	#"done" to close out open end of "do" command
	done