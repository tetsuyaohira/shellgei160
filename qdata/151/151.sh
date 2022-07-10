#!/bin/zsh
#cat 11302.xml | jq '.line[] | select(.line_name=="JR山手線").line_cd'
#curl -s https://file.ueda.tech/eki/p/13.json | jq '.line[] | select(.line_name=="JR山手線").line_cd'
#cat 11302.xml | ggrep -oP '<(station_name|lon|lat)>\K.*(?=</\1>)' | xargs -n3
# curl "http://cyberjapandata2.gsi.go.jp/general/dem/scripts/getelevation.php?lon=139.728439&lat=35.619772" #| jq .elevation

cat 11302.xml | ggrep -oP '<(station_name|lon|lat)>\K.*(?=</\1>)' | xargs -n3 sh -c 'printf "$0 "; curl -s "http://cyberjapandata2.gsi.go.jp/general/dem/scripts/getelevation.php?lon=$1&lat=$2" | jq.elevation; sleep 1' | sort -k2,2n
