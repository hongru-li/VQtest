#!/bin/bash

for file in `ls`
do
	if test -d $file
	then
		cd $file
		rm vmaf.csv
		cd x264_25_local
			pwd
			for log in `ls`:
			do
				if [[ $log == *.log ]]
				then
					echo -n $log, >> ../vmaf.csv
					tail -1 $log | awk -F '[ :]' '{print $NF}' >> ../vmaf.csv
				fi
			done
		cd ../
		cd v205_avc_cutoff_3B_0815
			pwd
			for log in `ls`:
			do
				if [[ $log == *.log ]]
				then
					echo -n $log, >> ../vmaf.csv
					tail -1 $log | awk -F '[ :]' '{print $NF}' >> ../vmaf.csv
				fi
			done
		cd ../
		cd ../
	fi
done 
