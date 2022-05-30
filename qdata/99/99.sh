#!/bin/zsh
# 1
cat cards.txt | ggrep -P '^(.) (\d+)( \1 \d+){4}'

echo '-----'

# 2
cat cards.txt | ggrep -P '^. (\d+)( . \1){1,2} . (\d+)( . \3){1,2}$'