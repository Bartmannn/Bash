#!/bin/bash

files=$(find $1 -type f)

for file in ${files[@]}; do
    tr "a" "A" < $file > "temp"
    mv ./temp $file
done
