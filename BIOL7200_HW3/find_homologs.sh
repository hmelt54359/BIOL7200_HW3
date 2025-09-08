#!/bin/bash
query=$1
subject=$2
output=$3
tblastn -query "$query" -subject "$subject" -outfmt "6 pident qlen length" | awk '$1 > 30 && $3 / $2 > 0.90' > "$output"
wc -l < "$output"