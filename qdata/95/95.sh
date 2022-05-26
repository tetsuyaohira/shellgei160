#!/bin/zsh
seq 0 8 | perl -nle 'printf("%08b\n", $_ ^ $_>>1)'