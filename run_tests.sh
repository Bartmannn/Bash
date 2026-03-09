#!/bin/bash

for x in './task'{1,{2..4},6,5,2}'.sh ./a'; do
    echo $'\n### ' ${x} $'###\n';
    ${x} ; # run ${x}
done

./undo_task5.sh ./a
