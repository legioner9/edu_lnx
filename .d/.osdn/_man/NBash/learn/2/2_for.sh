#!/bin/bash

for file in /home/st/data_1/communis/NBash/learn/2/*
do
    if [ -d "$file" ]; then echo "${file} is dir"
        elif [ -f "$file" ]; then echo "${file} is file"
    fi
done


