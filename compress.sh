#!/bin/bash

# 压缩128k脚本（需要提前下载ffmpeg）

echo "压缩脚本开始执行..."

for file in ./*/*.mp3
do
ffmpeg -threads 16 -i "$file" -codec:a libmp3lame -b:a 128k "$file".mp3
rm $file
mv "$file".mp3 $file
done