#!/bin/zsh
mkdir tmp
touch tmp/{1..10}
trap 'rm /Users/ohiratetsuya/Development/learn/shellgei160/qdata/24/tmp/*' EXIT
