#!/bin/bash

files=$(find $1 -type f)
words=$(grep -ho '\w\+' $files | sort | uniq)

for word in ${words[@]}; do
    if grep -qE "(\b$word\b|\ $word\b){2,}" $files; then
        echo "$word"
	grep -nE "(\b$word\b|\ $word\b){2,}" $files
        echo ""
    fi
done
