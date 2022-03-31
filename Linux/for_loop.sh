#!/bin/bash
state=('Nebraska' 'Hawaii' 'California' 'Colorado' 'New York')
#for state in ${state[2]}, which is California
for state in ${state[2]}
#if you start with "do", gotta end with "done"
	if [ $state[2] = 'Hawaii' ]
	then
		echo "Hawaii is the best!"
	else
		echo "I'm not fond of Hawaii"
	#need the "fi" since "if" statement
	fi