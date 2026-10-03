#!/bin/bash

for var in 1 2 3; do
    echo "$var"
done

file="1_for.sh"
IFS=$'\n'

for item in $('/usr/bin/cat' $file) ; do
    echo "${item}"
done


