#!/bin/zsh
sudo zgrep -a '(sudo:session): session opened for user root' /var/log/secure* |
  sed -r 's/^[^:]+://' |
  awk '{print $1}' |
  sort |
  uniq -c

