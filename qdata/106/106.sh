#!/bin/zsh
# shellcheck disable=SC2012
ls -l /bin/ |
  awk '$1~/[^lrwx-]/'
