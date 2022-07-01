#!/bin/zsh

tail -F httpd-access.log |
  grep --line-buffered ' 500 [0-9][0-9]*$' |
  while read line; do echo $line |
  mail -s "500 Error!" tetsuya.ohira@icloud.com; done &

