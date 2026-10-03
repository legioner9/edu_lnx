#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/.qa/gremium/unus.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

show_array()
{
    declare -a arr=("${@}")
    declare -i len=${#arr[@]}
    # Show passed array
    for ((n = 0; n < len; n++))
    do
        echo -en "|${arr[$n]}"
    done
    echo "|"
}

export show_array

unset filename