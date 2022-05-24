#!/bin/bash

targetPath="/mnt/c/Users/first.last/Documents/scriptTarget/"
frameDelayPct=1     #.7-1
frameRate=12        #10-24
scale=.5            #.5-1
lossiness=0         #0-80
compressionLevel=5  #5-20

mkdir temps

        #Purpose: Loop through all mp4s in the folder indicated by targetPath, optimize the mp4s, convert to gifs, optimize the gifs, send optmized gifs to targetPath folder
for filepath in $targetPath*.mp4; do
    fullfilename="${filepath##*/}"
    filename=${fullfilename%.mp4}
    ffmpeg -i $targetPath$filename.mp4 -r $frameRate -filter:v "setpts=$frameDelayPct*PTS" -crf $compressionLevel -max_muxing_queue_size 4096 temps/$filename.mp4
    ffmpeg -y -i temps/$filename.mp4 -vf palettegen temps/palette.png
    ffmpeg -y -i temps/$filename.mp4 -i temps/palette.png -filter_complex paletteuse -y temps/_$filename.gif
    giflossy -O3 --lossy=$lossiness --scale $scale temps/_$filename.gif -o temps/$filename.gif
    cp temps/$filename.gif $targetPath 
done

rm -r temps

