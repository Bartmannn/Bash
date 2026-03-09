#!/bin/bash

for file in 'zad'{1..6}'.sh'; do
	echo "### $file ###"
	echo ""
	cat $file
	echo $'\n'
done

echo "### test.sh ###"
echo ""
cat ./test.sh
echo $'\n'
