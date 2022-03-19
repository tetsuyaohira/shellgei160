#!/bin/zsh

cat bash_description.txt | sed 's/ / \n/g;s/$/ /' | awk '{L+=length}L>31{print "";L=length}{printf $0}' | awk 'sub(/ $/,"")'


