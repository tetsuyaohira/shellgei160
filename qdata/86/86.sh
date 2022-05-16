#!/bin/zsh
cat fractions |
  tr -d ' \n' |
  nkf -w16B0 |
  xxd -p -u |
  fold -b4 |
  grep -f- -w /usr/share/unicode/ UnicodeData.txt |
  awk -F';' 'BEGIN{print "puts "}{gsub("/",",",$9);print "Rational("$9")"}' |
  paste -sd+ |
  ruby
