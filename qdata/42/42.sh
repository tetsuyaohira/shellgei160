#!/bin/zsh

# 数字 + .で始まる
# cat item.md | awk '/^[0-9]\./'

# アクションで変数aをインクリメントしながら出力
# cat item.md | awk '/^[0-9]\./{a++;$1=a".";print}'

# 見出しのマーク#を目印に0にリセット
cat item.md | awk '/^[0-9]\./{a++;$1=a".";print}/^#/{a=0}'

# 数字 + . で始まるを否定する条件で見出しを出力
cat item.md | awk '/^[0-9]\./{a++;$1=a".";print}/^#/{a=0}!/^[0-9]\./'
