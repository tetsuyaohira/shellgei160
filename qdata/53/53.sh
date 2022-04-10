#!/bin/zsh
# join -a 指定されたファイルのレコードはファイルキーの有無に関係なく出力される
# join -o 出力する項目を選択するオプション
# join -e -aで残したキーに結合相手がない場合の代替値を指定
cat devicelist.txt | awk '{print $2,$1}' | sort |
  join -a 1 -a 2 -o 1.2 0 2.2 -e @ - <(sort measurement.txt)