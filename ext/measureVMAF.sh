#!/bin/bash

for dict in `ls -r`
do
	if test -d $dict
	then
		cd $dict
		width=`cat res| awk -F 'x' '{print $1}'`
            	height=`cat res| awk -F 'x' '{print $2}'`
		for file in `ls | grep -E *\.mp4`
		do
			`ffmpeg -y -i $file -c:v rawvideo ${file%.*}.yuv > /dev/null`
			echo decode source complete
		done
		for file in `ls | grep -E *\.yuv`
		do
			for enc_dict in `ls -r`
			do
				if test -d $enc_dict
				then
					cd $enc_dict
                        for encoded in `ls | grep -E "*(\.264|\.265|\.h264)"`
                        do
                        	`ffmpeg -i $encoded -c:v rawvideo ${encoded%.*}.yuv > /dev/null`
                        	echo decode $encoded complete
                        	`run_vmaf yuv420p $width $height ../$file ${encoded%.*}.yuv > ${encoded%.*}_vmaf.log`
                        	echo compute $encoded vmaf complete
                        	rm *.yuv
                        done
					cd ../
					mv $enc_dict .$enc_dict
				fi
			done
		done
		cd ../
		mv $dict .$dict
	fi
done
./showall.sh
