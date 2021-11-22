cat headings.md | sed -r 's/^## +(.*)/\1\n---/' | sed -r 's/^# +(.*)/\1\n===/'

## 行頭が見出しの記号##で始まり、１個以上の半角スペースがそれに続き、見出しに相当する文字列が0個以上存在する
## + 1個以上
## * 0個以上
## 正規表現を使うので -r あるいは -Eが必要