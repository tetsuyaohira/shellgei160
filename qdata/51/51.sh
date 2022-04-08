#!/bin/zsh

cat scores.txt | awk '{$1=sprintf("%03d",$1);print}' | sort | join -a 1 students.txt - | awk 'NF==2{print $0,0}NF==3'