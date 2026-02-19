#!/bin/bash
# a simple ffmpeg batch converter
# GPLv3 license

read -p "Convert from (ex: mp3): " from_ext
read -p "Convert to (ex: flac): " to_ext
mkdir -p $to_ext
for i in *.$from_ext;
  do name=`echo "$i" | cut -d'.' -f1`
  echo "$name"
  ffmpeg -i "$i" "$to_ext/${name}.$to_ext"
done
