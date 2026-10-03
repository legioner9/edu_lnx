#!/bin/bash

IFS=$'\n'

i=0

for str in $(cat /home/st/ProjectRepo/_repo/communis/NBash/learn/2/dir_1/b); do

    IFS=$'#'

    for entry_1 in $str; do

        echo "$entry_1"
        arr_res[$i]="$entry_1"
        ((i++))
    done

done

