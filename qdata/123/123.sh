#!/bin/zsh

grep ">$" dir[12]_strace |
  sed -E 's/dir(.)_strace:([^(]+).*<([.0-9]+)>.*$/\1 \2 \3/' |
  awk '{a[$2]+=($1==1)?-$3:$3}END{for(k in a){print k, a[k]*1000}}' |
  sort -k2,2n | tail -n 3