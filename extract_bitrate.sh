#!/bin/bash

for dict in `ls`
do 
	if test -d $dict
	then 
		cd $dict
		frames=`cat frames`
		fps=`cat fps`
		for sub in `ls`
		do	
			if test -d $sub
			then
				cd $sub
				if [[ $sub =~ ^.*log.*$ ]]
				then 
					rm bitrate.csv
				else
					ls -l | awk -F ' ' '{printf("%s,%s\n"),$9,$5*fps*8/(1000*frames)}' frames="$frames" fps="$fps" > bitrate.csv 
				fi
				cd ../
			fi
		done
		cd ../
	fi
done		
