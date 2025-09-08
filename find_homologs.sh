#!/bin/bash
tblastn -query "$1" -subject "$2" -outfmt "6 pident length qlen" \ | awk '$1 > 30 && ($2/$3) > 0.9' > $3
wc -l < $3