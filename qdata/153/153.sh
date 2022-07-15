#!/bin/zsh
(
  printf 'HEAD / HTTP/1.1\nHost: www.google.co.jp\n\n'
  sleep 1
) | telnet www.google.co.jp 80
