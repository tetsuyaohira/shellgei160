#!/bin/zsh
cat image_masked.bmp |
  xxd -b -c1 |
  sed -n '139,$p' |
  gsed -n '1~3p' |
  awk '{print $2}' |
  cut -c 8 |
  tr -d '\n' |
  perl -nle 'print pack("B*",$_)'