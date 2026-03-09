#!/bin/bash

files=$(find $1 -type f)

for file in ${files[@]}; do
    tr "A" "a" < $file > "temp"
    mv ./temp $file
done

