#!/bin/zsh

cat crypt |
  base64 -d |
  gzip -d |
  strings |
  sed 's;....;\\U&;g' |
  sed "s/.*/echo -e '&'/" |
  bash

