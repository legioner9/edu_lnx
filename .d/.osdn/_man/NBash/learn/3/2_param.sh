#!/bin/bash

echo "$$"
echo "$#"
count=1

for par in "$*";
do echo "\$* $count = $par";
count=$((count + 1));
done
# for par in "$@";do echo "\$@ $count = $par";count=$(($count + 1));done