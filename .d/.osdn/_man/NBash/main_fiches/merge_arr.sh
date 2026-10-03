#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/NBash/main_fiches/merge_arr.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git
declare -ar array1=( 5 10 15 )
declare -ar array2=( 20 25 30 )
declare -ar array_both=( ${array1[@]} ${array2[@]} )

echo -e "${GREEN}\${array_both[@]} = ${array_both[*]}${NORMAL}" #print variable

for item in ${array_both[@]}; do
    echo "Item: ${item}"
done
unset filename