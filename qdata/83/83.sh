#!/bin/zsh
cat soleil.bash | gsed 's/\\/\\\\/g' > new_soleil.bash
cat new_soleil.bash | iconv -f SJIS -t UTF-8
