cat log_range.log | sed -n '/24\/Dec\/2016 21:..:../,/25\/Dec\/2016 03:..:../p'
## sed -n '/正規表現1/,/正規表現2/p'と記述すると「正規表現1」にマッチする行から「正規表現2」にマッチする行までを抽出

# cat log_range.log | sed -n '/24\/Dec\/2016 21/,/25\/Dec\/2016 03/p'
# cat log_range.log | awk '$4" "$5>="[24/Dec/2016 21:00:00]" && $4" "$5<"[25/Dec/2016 03:59:60"'

