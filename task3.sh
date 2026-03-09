
#!/bin/bash

files=$(find $1 -type f)
words=$(grep -ho '\w\+' $files | sort | uniq)

for word in ${words[@]}; do
    echo "$(grep -lw $word $files | wc -l): $word"
done
