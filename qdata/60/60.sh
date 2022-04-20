#!/bin/zsh
seq 0 365 |
  # xargs -I@ date -jv+@d -f "%Y%m%d" "20170224" +'%F %a' |
  xargs -I@ date '+%F %a' -d '2017-02-24 @day' |
  grep ^2017 |
  grep 'Fri' |
  tac |
  uniq -w7 |
  tac