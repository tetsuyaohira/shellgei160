#!/bin/zsh
ldd /bin/grep |
  awk '/pcre/{print $3}' |
  xargs dpkg -S |
  awk -F: '{print $1}' |
  xargs dpkg -S |
  awk -F'[:-]' '/Version/{print $3}'
