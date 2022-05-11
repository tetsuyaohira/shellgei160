#!/bin/zsh
cat bom.txt |
  xxd -p |
  sed "s/^efbbbf/$(echo -n '[BOM]' | xxd -p)/" |
  xxd -p -r