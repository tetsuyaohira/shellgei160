#!/bin/zsh
cat page | ggrep -zoP '<td[^<]*>.*?</td>' | tr \\0 \\n |
  sed -E 's;<[^<]*>;;g' |
  mecab -E '' |
  awk '{a[$1]++}END{for(i in a)print i,a[i]}' |
  sort -k2,2nr