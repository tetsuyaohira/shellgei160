#!/bin/zsh
cat uni.txt |
  grep -o . |
  while read s; do echo -n $s" "; echo -n $s |
  wc -c; done
