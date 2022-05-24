#!/bin/zsh
yes | awk '0.01*(2^NR)>1000^3{print NR;exit}'