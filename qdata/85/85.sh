#!/bin/zsh
echo 🍑 🍓 | xargs -n1 | perl -nlE 'say unpack("H*",$_)' |
  xargs |
  awk '{print "obase=16;ibase=16;" toupper("("$1"+"$2")/2")}' |
  bc |
  perl -nlE 'say pack("H*",$_)'
