#!/bin/zsh
echo 富士 石廊崎 静岡 浜松 |
  tr ' ' \\n |
  xargs -I@ curl "wttr.in/@?format=3"
