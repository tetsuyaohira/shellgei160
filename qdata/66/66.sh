#!/bin/zsh
nextwd()
{
  read d;
  date -d "$d $((7 - $(date -d $d +%w) + $(date -d $1 +%w))) day" +%F;
}

echo 2017-09-18 | nextwd Tue | nextwd Fri | xargs -I@ date -d '@ yesterday' +%F