#!/bin/bash

for file in 'task'{1..6}'.sh'; do
	echo "### $file ###"
	echo ""
	cat $file
	echo $'\n'
done

echo "### run_tests.sh ###"
echo ""
cat ./run_tests.sh
echo $'\n'
