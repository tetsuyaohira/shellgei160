#!/bin/zsh
printf "%s 9 1sec ago\n" {1970..2017}-{01,07}-01 |
  TZ=right/Japan date -f- |
  grep :60
