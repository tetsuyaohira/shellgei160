## grep -Pオプション　perl正規表現を使えるようにする
##
cat message.txt | sed 's/)(/)\n(/g' | grep -P '^(\(\g<1>\)|[^()]+)$';
