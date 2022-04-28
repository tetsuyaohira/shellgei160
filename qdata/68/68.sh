#!/bin/zsh
f=0; t=$(bc <<< 2^100);
while [ $(bc <<< $t-$f) != 1 ];
do m=$(bc <<< "($f+$t)/2");
echo $m; date -d @$m && f=$m || t=$m;
done