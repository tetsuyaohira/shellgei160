#!/bin/zsh
# macOs ではzオプションが使えないのでgsedを使う
cat diary.txt | gsed -Ez 's/シ\n?ェ\n?ル\n?ス\n?ク\n?リ\n?プ\n?ト/%&%/g' | sed '/%/s/$/ @/;s/%//g'
