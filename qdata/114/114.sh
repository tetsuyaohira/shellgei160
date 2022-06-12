#!/bin/zsh
cat /proc/19669/maps |
  awk '{print $NF}' |
  grep '\.so$' |
  sort |
  uniq