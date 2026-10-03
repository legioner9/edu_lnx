#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/NBash/themes/logical/examp.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

unset filename

arr_1=("1" "2" "2") # min

arr_2=("1" "2" ) # sub

arr_3=()
for i in "${arr_1[@]}"; do
    skip=
    for j in "${arr_2[@]}"; do
        [[ $i == $j ]] && { skip=1; break; }
    done
    [[ -n $skip ]] || arr_3+=("$i")
done

declare -p arr_3

echo "${arr_3[@]}" # 3 8