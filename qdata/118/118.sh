#!/bin/zsh
awk '$4=15437{print $1}' /proc/[0-9]*/stat |
  xargs -I@ readlink /proc/@/fd/1
