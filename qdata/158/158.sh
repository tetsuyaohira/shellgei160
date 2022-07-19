#!/bin/zsh
# 小問1
ping gihyo.jp | ggrep -m 1 -oP 'ttl=\K\d+'

# 小問2
traceroute -I gihyo.jp 2>/dev/null | awk 'END{print $1-1}'
