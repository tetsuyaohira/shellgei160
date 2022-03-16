# tr コマンドで改行を除去
# 拡張正規表現を使うのでEオプションを指定
cat diarydiary.txt | tr -d '\n' | grep -oE '(.+)\1'

# mac zsh だとsedのzオプションが使えなくてエラー
cat diarydiary.txt | sed -rz 's/(.+)\n*\1/@\1\1@/g' | grep -o '@[^@]*@' | tr -d @;

