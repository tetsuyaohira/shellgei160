#!/bin/zsh
 cat table.md |
  gsed 's/|/ & /g' |
  column -t |
  sed 's/  |/|/g' |
  sed 's/|  /|/g'
