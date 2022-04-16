#!/bin/zsh

gsed -E 's;^(.*):(.*);s/\1/\2/g;g' service_stop_weekday.txt |
  gsed -f - service_depend_list.txt |
  tr -d :, |
  awk '{for(i=2;i<=NF;i++)print $i,$1}' |
  sort -u |
  awk '{a[$1]=a[$1]" "$2}END{for(k in a)print k":"a[k]}' |
  gsed 'y/月火水木金土日/1234567/' |
  sort |
  sed 'y/1234567/月火水木金土日/'