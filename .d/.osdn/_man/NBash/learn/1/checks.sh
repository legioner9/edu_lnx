#!/bin/bash

mydir="$HOME/data_1/communis/NBash/learn/o/"

if [ -d "$mydir" ]; then
    echo "$mydir exist"
    cd "$mydir" || exit
    echo "ls -a"
    ls -a
else
    echo "dir $mydir not exist"
    echo "$mydir will be created"
    mkdir "$mydir"
fi
