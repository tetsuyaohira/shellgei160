#!/bin/zsh
# 小問1
sudo tcpdump -x -c 1 icmp 2>/dev/null
ping -c 1 gihyo.jp

# 小問2
sudo tcpdump -x -c 1 icmp 2>/dev/null | grep $'\t' | sed 's/.*://' | xargs | sed -r 's/^.*0800 (.{4} ){3}//'