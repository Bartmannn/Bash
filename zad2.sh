#!/bin/bash

files=$(find $1 -type f)
grep -ho '\w\+' $files | sort | uniq -c
