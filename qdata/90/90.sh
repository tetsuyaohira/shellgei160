#!/bin/zsh
printf "0x%x\n" $((4#12 + 8#34 + 16#56))

# 先頭が0x、0Xの場合16進数と解釈
#      0の場合8進数と解釈
printf "0x%x\n" $((4#12 + 034 + 0x56))
