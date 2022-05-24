#!/bin/zsh
seq 0 inf |
  sed 's/.*/2019-01-01 00:00:00 & sec/' |
  date -f - '+%Y%m%d%H%M%S' |
  factor |
  awk 'NF==2{print $2;exit}'