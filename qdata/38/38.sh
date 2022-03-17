#!/bin/zsh
# -E:拡張正規表現を使用する
cat this_is_it.txt | sed -E 's/\&(amp;)+quot;/"/g'