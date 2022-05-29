#!/bin/zsh
cat tate.txt |
  awk '{printf("%-20s\n",$0)}' |
  tr ' ' @ |
  sed 's/./& /g' |
  sed 's/ $//' |
  rs -T |
  tr -d ' ' |
  awk '{print index($0,"たてよみ"),NR}' |
  awk '$1!=0'
