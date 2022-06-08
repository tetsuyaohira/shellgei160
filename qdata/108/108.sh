#!/bin/zsh
zcat syslog.gz |
  grep Killed |
  awk '{print $10}' |
  tr -d '()'

zcat syslog.gz |
  grep invoked |
  sed 's/ invoked.*$//' |
  sed 's/^.*[0-9]]//'