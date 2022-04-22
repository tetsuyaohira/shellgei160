#!/bin/zsh
# seq -f "$(date +%F) %g hour" 0 -1 -400 | date -f - '+touch -t %Y%m%d%H%M %F_%T' | sh
find . -daystart -mtime -$((8 + $(date '+%w'))) -mtime +$(date '+%w') -type f | sort