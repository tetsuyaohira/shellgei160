#!/bin/zsh
seq -w 0 9999 |
	awk -F "" '{print $0,$1*$1+$2*$2+$3*$3+$4*$4}' |
  sort -k2,2n |
  uniq -f 1 |
  head -n 101

