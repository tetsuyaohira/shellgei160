#!/bin/zsh
# uniq
#  -f1 1列目を無視して比較
#  -u 1つしかないレコード出力
cat annotation.md | grep -oE '\[\^[^[]+\]:?' | sed 's/]$/] 目印/' | sed 's/:$/ 注釈文/' | sort | awk '{print $2,$1}' | uniq -f1 -u
