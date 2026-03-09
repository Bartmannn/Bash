#!/bin/bash

for x in './zad'{1,{2..4},6,5,2}'.sh ./a'; do
    echo $'\n### ' ${x} $'###\n';
    ${x} ; # uruchomienie  ${x}
done

./undo5.sh ./a
