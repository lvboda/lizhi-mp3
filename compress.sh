#!/bin/bash

# 批量压缩脚本

echo "压缩脚本开始执行..."

for file in ./*/*.mp3
do
ffmpeg -threads 16 -i "$file" -codec:a libmp3lame -b:a 128k "$file".mp3
rm $file
mv "$file".mp3 $file
done

echo "压缩脚本执行完成"