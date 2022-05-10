#!/bin/zsh

# bcコマンドで16進数から2進数に変換
# xxdの-rはリバース(エンコードでなくデコードする)
cat zeroone | sed 's/^/obase=16;ibase=2;/' | bc | xxd -p -r
