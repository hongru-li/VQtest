#!/bin/bash

for dict in `ls -r`
do
	if test -d $dict
	then
		cd $dict
		res=`cat res`
		for file in `ls | grep *\.yuv`
		do
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 0 --b-adapt 0 --no-scenecut --qp 25 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_25.h264 &> ${file%.*}_25.log 
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 0 --b-adapt 0 --no-scenecut --qp 28 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_28.h264 &> ${file%.*}_28.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 0 --b-adapt 0 --no-scenecut --qp 31 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_31.h264 &> ${file%.*}_31.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 0 --b-adapt 0 --no-scenecut --qp 34 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_34.h264 &> ${file%.*}_34.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 0 --b-adapt 0 --no-scenecut --qp 37 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_37.h264 &> ${file%.*}_37.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 0 --b-adapt 0 --no-scenecut --qp 40 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_40.h264 &> ${file%.*}_40.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 0 --b-adapt 0 --no-scenecut --qp 43 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_43.h264 &> ${file%.*}_43.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 0 --b-adapt 0 --no-scenecut --qp 48 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_48.h264 &> ${file%.*}_48.log
		mkdir x264_0B_me32
		mv *.h264 x264_0B_me32
		mkdir x264_log_0B_me32
		mv *.log x264_log_0B_me32
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 3 --b-adapt 0 --no-scenecut --qp 25 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_25.h264 &> ${file%.*}_25.log 
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 3 --b-adapt 0 --no-scenecut --qp 28 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_28.h264 &> ${file%.*}_28.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 3 --b-adapt 0 --no-scenecut --qp 31 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_31.h264 &> ${file%.*}_31.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 3 --b-adapt 0 --no-scenecut --qp 34 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_34.h264 &> ${file%.*}_34.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 3 --b-adapt 0 --no-scenecut --qp 37 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_37.h264 &> ${file%.*}_37.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 3 --b-adapt 0 --no-scenecut --qp 40 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_40.h264 &> ${file%.*}_40.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 3 --b-adapt 0 --no-scenecut --qp 43 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_43.h264 &> ${file%.*}_43.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 3 --b-adapt 0 --no-scenecut --qp 48 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_48.h264 &> ${file%.*}_48.log
		mkdir x264_3B_me32
		mv *.h264 x264_3B_me32
		mkdir x264_log_3B_me32
		mv *.log x264_log_3B_me32
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 3 --b-adapt 0 --no-scenecut --b-pyramid none --qp 25 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_25.h264 &> ${file%.*}_25.log 
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 3 --b-adapt 0 --no-scenecut --b-pyramid none --qp 28 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_28.h264 &> ${file%.*}_28.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 3 --b-adapt 0 --no-scenecut --b-pyramid none --qp 31 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_31.h264 &> ${file%.*}_31.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 3 --b-adapt 0 --no-scenecut --b-pyramid none --qp 34 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_34.h264 &> ${file%.*}_34.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 3 --b-adapt 0 --no-scenecut --b-pyramid none --qp 37 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_37.h264 &> ${file%.*}_37.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 3 --b-adapt 0 --no-scenecut --b-pyramid none --qp 40 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_40.h264 &> ${file%.*}_40.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 3 --b-adapt 0 --no-scenecut --b-pyramid none --qp 43 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_43.h264 &> ${file%.*}_43.log
		x264 --input-res $res --fps 30 $file --verbose --merange 32 --bframes 3 --b-adapt 0 --no-scenecut --b-pyramid none --qp 48 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --cqm flat --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_48.h264 &> ${file%.*}_48.log
		mkdir x264_3B_defaultGOP_me32
		mv *.h264 x264_3B_defaultGOP_me32
		mkdir x264_log_3B_defaultGOP_me32
		mv *.log x264_log_3B_defaultGOP_me32
		#x265 --csv-log-level 2 --csv ${file%.*}_25.log --input-res $res --fps 30 $file --bframes 1 --b-adapt 0 --no-scenecut --no-b-pyramid --qp 25 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --scaling-list off --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_25.h265
		#x265 --csv-log-level 2 --csv ${file%.*}_28.log --input-res $res --fps 30 $file --bframes 1 --b-adapt 0 --no-scenecut --no-b-pyramid --qp 28 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --scaling-list off --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_28.h265
		#x265 --csv-log-level 2 --csv ${file%.*}_31.log --input-res $res --fps 30 $file --bframes 1 --b-adapt 0 --no-scenecut --no-b-pyramid --qp 31 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --scaling-list off --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_31.h265
		#x265 --csv-log-level 2 --csv ${file%.*}_34.log --input-res $res --fps 30 $file --bframes 1 --b-adapt 0 --no-scenecut --no-b-pyramid --qp 34 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --scaling-list off --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_33.h265
		#x265 --csv-log-level 2 --csv ${file%.*}_37.log --input-res $res --fps 30 $file --bframes 1 --b-adapt 0 --no-scenecut --no-b-pyramid --qp 37 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --scaling-list off --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_37.h265
		#x265 --csv-log-level 2 --csv ${file%.*}_40.log --input-res $res --fps 30 $file --bframes 1 --b-adapt 0 --no-scenecut --no-b-pyramid --qp 40 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --scaling-list off --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_40.h265
		#x265 --csv-log-level 2 --csv ${file%.*}_43.log --input-res $res --fps 30 $file --bframes 1 --b-adapt 0 --no-scenecut --no-b-pyramid --qp 43 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --scaling-list off --keyint 60 --min-keyint 60 --preset faster --psnr --output ${file%.*}_43.h265
		#x265 --csv-log-level 2 --csv ${file%.*}_48.log --input-res $res --fps 30 $file --bframes 1 --b-adapt 0 --no-scenecut --no-b-pyramid --qp 48 --ipratio 1 --pbratio 1 --aq-mode 0 --tune psnr --scaling-list off --keyint 90 --min-keyint 90 --preset faster --psnr --output ${file%.*}_48.h265
		#mkdir x265_1B_defaultGOP
		#mv *.h265 x265_1B_defaultGOP
		#mkdir x265_log_1B_defaultGOP
		#mv *.log x265_log_1B_defaultGOP
		done
		cd ../
	fi
done
