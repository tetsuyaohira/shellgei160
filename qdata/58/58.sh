#!/bin/zsh


tr ',' ' ' < num.csv | # ,を' 'に置換
  xargs -n 1 | # 個々の数字を各行に分ける
  tr -d ' ' | # ' 'を削除
  xargs | # 数字を横に並べる
  tr ' ' + | # ' 'を+に置換
  bc