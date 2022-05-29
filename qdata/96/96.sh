#!/bin/zsh
awk '{print $0,FILENAME}' user* |
  sort |
  awk 'pre!=$1{print "";printf $0}pre==$1{printf " "$2}{pre=$1}' |
  awk 'NF>3'
