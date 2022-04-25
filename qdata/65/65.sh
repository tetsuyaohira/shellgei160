#!/bin/zsh
seq -f '2019-01-01 %g day' 0 364 |
  date -f - '+%Y-%m-%d %a' |
  join -a 1 - <(cat syukujitsu.csv| grep ^2019 | awk -F'[/ ,]' '{printf "%d-%02d-%02d %s\n",$1,$2,$3,$4}') |
  awk '$2~"[土|日]"||NF==3'
