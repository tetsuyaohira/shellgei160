#!/bin/zsh
(echo -e "HTTP/1.1 200 OK\nContent-Length: 4"; echo; printf test) | nc -N -l 8080