awk -F: '{ print $(NF-2) }' access.log | awk '$1 < 12 { print "午前" }; $1 >= 12 { print "午後" }' | sort | uniq -c

## -Fオプションは列の区切り文字を空白やタブから変更する
## NF(number of fields)は列数
## $(式)あるいは$変数という形で、指揮や変数で動的に指定することができる
## uniqは重複する行を消すコマンド。ただし、消した偉業はsortの出力のように連続で存在している必要がある
## -cオプションは同じ業がいくつ連続しているかを数える。