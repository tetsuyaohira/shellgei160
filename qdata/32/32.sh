#!/bin/zsh

# -f - は標準入力(-)から正表現のリストを読み込む
# -x は「行全体が正規表現とマッチしないとマッチしたことにしない」
rev kaibun.txt | grep -xf - kaibun.txt
