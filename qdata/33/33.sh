#!/bin/zsh

# grep -o は検索対象の文字列が見つかると、それを独立した行に出力
# tac 上下反転
paste <(grep -o . not_kaibun) <(grep -o . not_kaibun | tac)


diff <(grep -o . not_kaibun) <(grep -o . not_kaibun | tac)
