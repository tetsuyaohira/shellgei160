#!/bin/zsh
cat oct.txt | awk '{$1="";print}' | xargs -n 1 |
  gsed '1iobase=16;ibase=8;' |
  bc |
  awk '{printf "%4s\n",$0}' |
  tr ' ' 0 |
  sed -r 's/(..)(..)/\2\1/' |
  xxd -p -r