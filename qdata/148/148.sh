#!/bin/zsh
curl -s file.ueda.tech/eki/p/14.xml | grep -B1 相鉄いずみ野線


wget file.ueda.tech/eki/l/29002.xml

ggrep -oP '<(station_name)>\K.*(?=</\1>)' 29002.xml