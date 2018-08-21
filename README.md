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

`ext/measureVMAF.sh`  --  measure VMAF score of encoded videos in subfolders

`ext/extractVMAF.sh`  --  gather VMAF scores and write vmaf.csv

## Setup 

* install ffmpeg, x264, x265, MSU, vmaf tool

* create a folder for each raw yuv video

* fill res, fps, frames message in each folder

* modify encode.sh, start26x.sh and run

* run extract_bitrate.sh

* run measure.py

* use the Java tool in another repository to generate RD curves 

## Warnings

### Low PSNR Issue

Usually PSNR value should be higher than 25, if you find your result PSNR is very low or doesn't go up as bitrate increases, there are usually three possible reasons:
  * Video is not encoded correctly, play the bitstream with ffplay to test it visually, and check parameters, especially the resolution.
  * MSU doesn't decode the bitstream for comparison correctly. We already found MSU has bugs for comparing bitstreams encoded by Nvidia Tesla. For this, modify measure.py to decode the bitstream to raw yuv first with ffmpeg before calculating PSNR.
  * ffmpeg duplicate frames when decoding and thus frames between original and encoded streams are not aligned. For this, make sure you use '-vsync 0' for ffmpeg decoding, which disables dup frames.

### PSNR Channel

Usually our PSNR refers to Y-PSNR, because human eyes are more sensitive to luminanace difference. However, some customers calculate PSNR by combining Y, U, V-PSNR in a customed ratio, like: PSNR = (6*Y-PSNR + U-PSNR + V-PSNR)/8. For this, you need to modify measure.py and Java RD curve plotting tool. A modified measure.py can be ext/mearuse2.py according to the sample equation.

### APSNR vs PSNR

APSNR and PSNR are two different metrics. For more details you can take a look at MSU's documentation. To sum up, APSNR is easier to calculate but less accurate, while PSNR cost more time for calculation, but precise. Some customers calculate PSNR use '-psnr' options in x264/265, which actually gives APSNR (not exactly the same value as APSNR given by MSU, but very close). Note APSNR is usually 1dB higher than PSNR and thus it is not fair to only calculate PSNR for v205 bistreams. Anyway, just make sure we use same metric for both sides. 

### VMAF Speed Issue

Measuring VMAF score is a very slow process. If the bitstream being tested has more than a thousand frames, don't choose to calculate VMAF or you will spend many days on it. 
