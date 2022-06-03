#!/bin/zsh
echo a > hoge
seq 1 99 | while read i ; do ln hoge $i ;done