#!/bin/zsh

while sleep 1; do curl -Is -o /dev/null -w '%{http_code}' https://www.google.co.jp/ |
  awk '{print /200/?"Success":"Warning"}'; done
