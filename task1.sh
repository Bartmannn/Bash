#!/bin/bash

files=$(find $1 -type f)
for file in ${files[@]}; do
    echo "$(basename $file)"
done
