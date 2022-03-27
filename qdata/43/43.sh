#!/bin/zsh

# awk NRは処理中の行数
# sort -s は安定ソート。等しいキー同士の順番を維持
# sort k はソート列指定。1,1は１列目だけでソート。2だと２列目以降をソートする
cat bunken.txt | awk 'NR%3==1{a=$1};{print a, $0}' | sort -s -k1,1| sed 's/....//'
