#!/bin/zsh
openssl s_client -connect example.com:443 </dev/null 2>/dev/null |
  sed -n '/BEGIN CERTIFICATE/,/END CERTIFICATE/p' |
  openssl x509 -text |
  grep 'Not Before' -A 1
