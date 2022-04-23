#!/bin/zsh
nkf -wLux syukujitsu.csv |
	tail -n +2 |
	teip -d, -f 1 -- date -f- '+%Y-%m-%d' |
	awk -F- '$1>=2019&& $1<2022' |
	cat - <(dateutils.dseq 2019-01-01 2021-12-31 |
	sed 's/$/,@/') |
	sort -r |
	uniq -w10 |
	tac
