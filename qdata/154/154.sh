#!/bin/zsh
echo -e 'curl \nwget -O- \ndig \nnslookup \nping -c 1' |
  sed 's:.*:sudo strace -f & b.ueda.tech |\& grep /etc/hosts | sed "s/^/& /":' |
  bash |
  awk '!a[$1]++{print $1}'
