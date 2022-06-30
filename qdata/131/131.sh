#!/bin/zsh
wget example.com/big_file.tar.gz &&
  mail -s "Success!" tetsuya.ohira@icloud.com <<< "" ||
  mail -s "Failed!" tetsuya.ohira@icloud.com <<< ""
