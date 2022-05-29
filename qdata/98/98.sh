#!/bin/zsh
# 2つのファイルに共通して存在する行と片方にしかない行を確認するには、commというコマンドを使うと便利
comm <(sort list1) <(sort list2) |
  awk -F'\t' '{print $NF > (NF==3?"common":"oneside")}'