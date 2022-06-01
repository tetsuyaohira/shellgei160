#!/bin/zsh
cat alphabet_connection | tr ' ' '\n' | sort | comm - <(echo {a..z} | tr ' ' '\n') |
  sed 's/^..//' | gsed -Ez 's/([a-z])(\n[a-z])*\n([a-z])/\1-\3/g' | xargs