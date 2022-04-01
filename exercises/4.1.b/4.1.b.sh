#!/bin/zsh
echo '小問1'
join master.txt transaction.txt

echo '小問2'
# -aで指定された方のファイルのレコードは他のファイルのキーの有無に関係なく出力される
join -a 2 master.txt transaction.txt

echo '小問3'
join -a 1 -a 2 master.txt transaction.txt