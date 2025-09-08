#!/bin/bash
query=(realpath "$1")
subject=(realpath "$2")
output=(realpath "$3")
tblastn -query "$query" -subject "$subject" -outfmt "6 pident length qlen" | awk '$1 > 30 && ($2/$3) > 0.9 {print $0}' > "$output"
wc -l < "$output"