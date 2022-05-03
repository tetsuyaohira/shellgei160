#!/bin/zsh
LANG=C unzip 秘密の圧縮ファイル.zip
ls |
  grep -va "zip$" |
  while read f;
    do mv $f $(nkf <<< $f);
  done;
