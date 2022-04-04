#!/bin/zsh

# awkの最初のルールでpにCPU使用率、nにプロセス数を集計
# ENDルールでCPU使用率、プロセス数、ユーザー名を出力
# sortでCPU使用率をキーに降順でソート
# -k 1,2は1列目から２列目を基準にソートする
# -nは数字順のソート
# -rは降順でソート
ps aux | awk 'NR>1{p[$1]+=$3;n[$1]++}END{for(i in p) print p[i], n[i], i}' | sort -nrk 1,2