#!/bin/zsh
sudo find /var/log -type d |
  while read d; do
    echo -n $d" "
    sudo find "$d" -type f -maxdepth 1 |
      wc -l
  done
