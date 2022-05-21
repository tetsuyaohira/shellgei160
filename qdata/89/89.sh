#!/bin/zsh
base64 -d ctf-data |
  gzip -dc > a;chmod +x a;./a |
  tr '#-z' '!-z'
