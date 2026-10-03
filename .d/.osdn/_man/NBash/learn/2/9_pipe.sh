#!/bin/bash

IFS=:
for dir in $PATH;do
    echo "folder: $dir"
    for file in "$dir"/*;do
        if [ -x "$file" ];then echo "    $file";fi
    done
done 