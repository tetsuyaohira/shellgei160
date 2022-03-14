#!/bin/bash
## -zは改行を跨いで検索。mac zshでは使えない
cat konden | sed -zE 's/私\n?財\n?法/おれのもの/g'

## -PはPCRE(perl正規表現)を使う宣言。mac zshでは使えない
cat konden | grep -ozP '墾\n?田\n?永\n?年\n?私\n?財\n?法\n?'


