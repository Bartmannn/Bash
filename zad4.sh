#!/bin/bash

files=$(find $1 -type f)
words=$(grep -ho '\w\+' $files | sort | uniq)

for word in ${words[@]}; do
    echo "$word"
    echo ""
    echo "$(grep -nw $word $files | uniq)" # -n też działa, dodatkowo pokazuję numer linii
    echo ""
done
