#!/bin/bash

IFS='\n'

for str in $(cat /home/st/ProjectRepo/_repo/communis/NBash/learn/2/dir_1/a)
do
    IFS=';'
    
    for entry in $str
    do
        echo "$entry"
    done
    
done