#!/bin/zsh

# sedのzオプションは改行を無視する
# rubyのrオプションはrequireメソッド
cat kanjinum.txt | ruby -rzen_to_i -ne 'puts $_.zen_to_i' | gsed -zE 's/\n([。、])/\1\n/g'
