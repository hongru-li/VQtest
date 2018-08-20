# VQtest

toolchain for Aupera VQ test

## Script Functionalitys

`structure.txt`       --  standard file structure you need to follow, which is crucial for all the following scripts to work

`measure.py`          --  measure metrics like PSNR or SSIM for all encoded bitstreams in subfolders using MSU VQ Tool

`extract_bitrate.sh`  --  Calculate achieved bitrate of all encoded bitstreams in subfolders

`encode.sh`           --  sample script which will encode all raw yuv video with v205

`start26x.sh`        --  sample script which will encode all raw yuv video with x264/265

`*.cfg`               --  sample v205 configuration files

`folders`             --  folders contain rawvideo, encoded bistream, and some other infos

`folders/fps`         --  fps message

`folders/res`         --  resolution message

`folders/*.yuv`       --  raw YUV 420P video

`folders/frames`      --  total frames of *.yuv

## Setup 

* install ffmpeg, x264, x265, MSU, vmaf tool

* create a folder for each raw yuv video

* fill res, fps, frames message in each folder

* modify encode.sh, start26x.sh and run

* run extract_bitrate.sh

* run measure.py

* use the Java tool in another repository to generate RD curves 
