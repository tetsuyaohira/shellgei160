#!/bin/zsh
du -s /usr/* |
  sort -nr |
  awk '{print $2}' |
  xargs du -sh
