#!/bin/zsh
awk 'FNR==1{$1="";h=$0}FNR!=1{print FILENAME,$0,h,NF-1}' data_U data_V |
  awk '{for(i=NF-$NF;i<NF;i++)print $1,$2,$i,$(i-$NF)}' |
  sed 's/data_//'
