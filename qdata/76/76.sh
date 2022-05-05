#!/bin/zsh
# cat mac_ls_old.txt | sed 's/./&\n/g'
# cat mac_ls_new.txt | sed 's/./&\n/g'
nkf -Z4 mac_ls_old.txt |
  nkf |
  diff - mac_ls_new.txt