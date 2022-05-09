#!/bin/zsh
iconv -l |
  while read c; do iconv -f $c message.txt &>/dev/null && iconv -f $c message.txt 2>/dev/null |
    ggrep -qP '\p{Hiragana}|\p{Katakana}|\p{Han}' && echo $c && iconv -f $c message.txt; done
