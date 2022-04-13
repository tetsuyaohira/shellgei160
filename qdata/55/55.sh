
seq 4 | sed '2,$p;$d' | paste -d, - -
#| sed 's/.*/[&]/'
#cat watch_log.json | sed '2,$p;$d' | paste -d , - - | sed 's/.*/[&]/' | while read -r l;do jq -r '" diff: \"\(.[0].timestamp)\" \"\(.[1].timestamp)\""' <<<$l; diff <(jq -r '.[0].output' <<<$l) <(jq -r ' .[1].output'<<<$l);done