#!/bin/zsh
awk '(a[$3$4]+=$5) END{for(k in a)print k,a[k]}' sales | sort | join <(sed 's/ //' stones_master) -


