#!/bin/zsh

time cat sites.txt | xargs -I@ -P 30 sh -c 'host @ || echo @ >> fake_sites.txt'


