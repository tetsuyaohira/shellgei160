#!/bin/zsh
strace seq 100 2>temp | head
cat temp | grep -oE '"(/[^/"]*)*"'
