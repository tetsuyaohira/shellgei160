#!/bin/zsh

awk 'match($0, /^ +/){if (RLENGTH%4) print NR}' hoge.py