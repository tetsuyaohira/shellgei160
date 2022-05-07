#!/bin/zsh
# grep -aH . meme_euc | nkf
# grep -H 検索結果の毎行にファイル名を付加
# grep -a 非UTF-8のファイルを検索
ls meme_* |
  xargs -I@ sh -c "grep -aH . @ | nkf" |
  grep 山田 |
  sed 's/:.*//'
