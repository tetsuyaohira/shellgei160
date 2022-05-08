#!/bin/zsh
grep -oE '[一-龠]' sample_novel.txt |
  grep -vf jouyou_kanji.txt

# grep -oP '\p{Han}' sample_novel.txt | grep -vf jouyou_kanji.txt

