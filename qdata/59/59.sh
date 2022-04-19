#!/bin/zsh
cat data.csv |
  grep -Eon '[^,"]|"([^"]*("")*)*"' |
  sed 's/:.*//' |
  uniq -c |
  awk '$1==2{print $2}'