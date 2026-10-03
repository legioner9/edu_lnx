#!/bin/bash

arr_filtr=(3 5)

arr_init=("1 +" "2  . +" "3 +" "4  -" "5 = =")

arr_res=()

n=1

IFS=$'\n'
for init in "${arr_init[@]}"; do
    for filtr in "${arr_filtr[@]}"; do
        if [ "${filtr}" -eq "$n" ]; then
            arr_res+=("${init}")
        fi
    done
    n=$((n + 1))
done
IFS=$' \t\n'

parr3e_ arr_res
