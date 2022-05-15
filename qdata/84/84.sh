#!/bin/zsh
zcat newline.txt.gz |
  tr -dc '\015\012' |
  sed -z 's/\x0d/CR/g;s/\x0a/LF&/g'
