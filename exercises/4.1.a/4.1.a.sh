#!/bin/zsh
echo '小問1'
cat table.txt | awk '{print $0, $2+$3}'

echo '小問2'
cat table.txt | awk '{print; a+=$2;b+=$3}END{print "計",a,b}'

echo '小問3'
cat table.txt | awk '{print;x[$1]+=$2;y[$1]+=$3}END{for(k in x){print k"計",x[k],y[k]}}'
# cat table.txt | awk '{print;x[$1]+=$2;y[$1]+=$3}END{print "a計",x["a"],y["a"];print "b計",x["b"],y["b"]}'

echo '小問4'
cat table.txt | awk '{print $0, $2+$3}' | awk '{print $0,    int(   (  $4 +      ($4>0?0.05:-0.05)   )  *10 ) /10 }'
