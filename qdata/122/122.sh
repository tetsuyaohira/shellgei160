#!/bin/zsh
(strace xargs -n 1 < words >/dev/null ) |& grep '^clone(' | wc -l