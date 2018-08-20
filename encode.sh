#/bin/bash

for dict in `ls`
do 
	if test -d $dict
	then 
		cd $dict
		fps=`cat fps`
		for file in `ls | grep *\.yuv`
		do
		#	`AL_Encoder.exe -cfg ../VQ_LOWB_264.cfg -i $file  --gop-numB 3 --gop-length $[3*fps] --framerate $fps --bitrate 500 --max-bitrate 600 -o ${file%.*}_05M.264` 
		#	`AL_Encoder.exe -cfg ../VQ_LOWB_264.cfg -i $file  --gop-numB 3 --gop-length $[3*fps] --framerate $fps --bitrate 1000 --max-bitrate 1200 -o ${file%.*}_1M.264` 
		#	`AL_Encoder.exe -cfg ../VQ_ADA_264.cfg -i $file  --gop-numB 3 --gop-length $[3*fps] --framerate $fps --bitrate 2000 --max-bitrate 2400 -o ${file%.*}_2M.264` 
		#	`AL_Encoder.exe -cfg ../VQ_ADA_264.cfg -i $file  --gop-numB 3 --gop-length $[3*fps] --framerate $fps --bitrate 3000 --max-bitrate 4500 -o ${file%.*}_3M.264` 
		#	`AL_Encoder.exe -cfg ../VQ_ADA_264.cfg -i $file  --gop-numB 3 --gop-length $[3*fps] --framerate $fps --bitrate 4000 --max-bitrate 6000 -o ${file%.*}_4M.264` 
		#	`AL_Encoder.exe -cfg ../VQ_ADA_264.cfg -i $file  --gop-numB 3 --gop-length $[3*fps] --framerate $fps --bitrate 5000 --max-bitrate 7500 -o ${file%.*}_5M.264`
		#	mkdir v205_avc_cuton_3B
		#	mv *.264 v205_avc_cuton_3B
		#	`AL_Encoder.exe -cfg ../VQ_LOWB_264.cfg -i $file  --gop-numB 0 --gop-length $[3*fps] --framerate $fps --bitrate 500 --max-bitrate 600 -o ${file%.*}_05M.264`
		#	`AL_Encoder.exe -cfg ../VQ_LOWB_264.cfg -i $file  --gop-numB 0 --gop-length $[3*fps] --framerate $fps --bitrate 1000 --max-bitrate 1200 -o ${file%.*}_1M.264`                                           
        #    `AL_Encoder.exe -cfg ../VQ_ADA_264.cfg -i $file  --gop-numB 0 --gop-length $[3*fps] --framerate $fps --bitrate 2000 --max-bitrate 2400 -o ${file%.*}_2M.264`                                            
         #   `AL_Encoder.exe -cfg ../VQ_ADA_264.cfg -i $file  --gop-numB 0 --gop-length $[3*fps] --framerate $fps --bitrate 3000 --max-bitrate 4500 -o ${file%.*}_3M.264`                                            
         #   `AL_Encoder.exe -cfg ../VQ_ADA_264.cfg -i $file  --gop-numB 0 --gop-length $[3*fps] --framerate $fps --bitrate 4000 --max-bitrate 6000 -o ${file%.*}_4M.264`                                            
         #   `AL_Encoder.exe -cfg ../VQ_ADA_264.cfg -i $file  --gop-numB 0 --gop-length $[3*fps] --framerate $fps --bitrate 5000 --max-bitrate 7500 -o ${file%.*}_5M.264`
         #   mkdir v205_avc_cuton_0B                                                     
         #   mv *.264 v205_avc_cuton_0B
            width=`cat res| awk -F 'x' '{print $1}'`
            height=`cat res| awk -F 'x' '{print $2}'`
            `AL_Encoder.exe -cfg ../VQ_AVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 3 --gop-length 60 --sliceQP 25 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_25.264`
            `AL_Encoder.exe -cfg ../VQ_AVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 3 --gop-length 60 --sliceQP 28 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_28.264`
            `AL_Encoder.exe -cfg ../VQ_AVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 3 --gop-length 60 --sliceQP 31 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_31.264`
            `AL_Encoder.exe -cfg ../VQ_AVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 3 --gop-length 60 --sliceQP 34 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_34.264`
            `AL_Encoder.exe -cfg ../VQ_AVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 3 --gop-length 60 --sliceQP 37 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_37.264`
            `AL_Encoder.exe -cfg ../VQ_AVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 3 --gop-length 60 --sliceQP 40 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_40.264`
            `AL_Encoder.exe -cfg ../VQ_AVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 3 --gop-length 60 --sliceQP 43 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_43.264`
            `AL_Encoder.exe -cfg ../VQ_AVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 3 --gop-length 60 --sliceQP 48 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_48.264`
            mkdir v205_avc_3B
            mv *.264 v205_avc_3B
            `AL_Encoder.exe -cfg ../VQ_AVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 0 --gop-length 60 --sliceQP 25 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_25.264`
            `AL_Encoder.exe -cfg ../VQ_AVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 0 --gop-length 60 --sliceQP 28 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_28.264`
            `AL_Encoder.exe -cfg ../VQ_AVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 0 --gop-length 60 --sliceQP 31 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_31.264`
            `AL_Encoder.exe -cfg ../VQ_AVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 0 --gop-length 60 --sliceQP 34 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_34.264`
            `AL_Encoder.exe -cfg ../VQ_AVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 0 --gop-length 60 --sliceQP 37 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_37.264`
            `AL_Encoder.exe -cfg ../VQ_AVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 0 --gop-length 60 --sliceQP 40 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_40.264`
            `AL_Encoder.exe -cfg ../VQ_AVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 0 --gop-length 60 --sliceQP 43 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_43.264`
            `AL_Encoder.exe -cfg ../VQ_AVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 0 --gop-length 60 --sliceQP 48 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_48.264`
            mkdir v205_avc_0B
            mv *.264 v205_avc_0B
            #`AL_Encoder.exe -cfg ../VQ_HEVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 1 --gop-length 60 --sliceQP 25 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_25.265`
            #`AL_Encoder.exe -cfg ../VQ_HEVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 1 --gop-length 60 --sliceQP 28 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_28.265`
            #`AL_Encoder.exe -cfg ../VQ_HEVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 1 --gop-length 60 --sliceQP 31 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_31.265`
            #`AL_Encoder.exe -cfg ../VQ_HEVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 1 --gop-length 60 --sliceQP 34 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_34.265`
            #`AL_Encoder.exe -cfg ../VQ_HEVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 1 --gop-length 60 --sliceQP 37 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_37.265`
            #`AL_Encoder.exe -cfg ../VQ_HEVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 1 --gop-length 60 --sliceQP 40 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_40.265`
            #`AL_Encoder.exe -cfg ../VQ_HEVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 1 --gop-length 60 --sliceQP 43 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_43.265`
            #`AL_Encoder.exe -cfg ../VQ_HEVC.cfg -i $file --input-width $width --input-height $height  --gop-numB 1 --gop-length 60 --sliceQP 48 --framerate 30 --ratectrl-mode CONST_QP -o ${file%.*}_48.265`
            #mkdir v205_hevc_1B
            #mv *.265 v205_hevc_1B
		done
		cd ../
	fi
done		
