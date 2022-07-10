#!/bin/zsh
# wget https://gihyo.jp/magazine/SD/backnumber

nkf -wLux backnumber |
  grep 品切 -B3 |
  grep '^<h3' |
  sort |
  pandoc -t plain

grep ございません -B7 2020 |
  grep -o '2020年[0-9]*月号' |
  uniq;
