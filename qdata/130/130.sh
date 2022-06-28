#!/bin/zsh
# server
echo 山田課長の秘密 > maruhi
# python3 -m http.server 8080
php -S localhost:8080


# client
curl http://localhost:8080/maruhi
