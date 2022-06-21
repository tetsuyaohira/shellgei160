#!/bin/zsh
ip l |
  grep -E '^[0-9]' |
  awk '{print $2}' |
  tr -d : |
  xargs
