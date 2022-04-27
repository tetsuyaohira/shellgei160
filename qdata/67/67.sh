#!/bin/zsh
cat dinner |
  awk '{"date -d "$1" +%a" | getline t; print t}'

awk '{print $1}' dinner |
  date -f - "+%Y%m%d %a" |
  join - dinner |
  awk '{print $1,$3 > $2}'