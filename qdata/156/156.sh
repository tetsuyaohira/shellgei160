#!/bin/zsh
cat domains.txt |
  xargs -n1 dig +noall +answer |
  awk '{print $1}' |
  uniq -d | sed 's/.$//'