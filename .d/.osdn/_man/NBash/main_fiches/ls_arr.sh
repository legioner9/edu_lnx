#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/NBash/main_fiches/ls_arr.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

IFS=$'\n' 
array=( $(ls -l) )
for rec in "${array[@]}"; do 
    echo $rec 
done

#list=(*)
#array=($(ls -d */))
# if (( ${#array[@]} == 0 )); then
#     echo "No subdirectories found" >&2
# fi
#array=(ww/* ee/* qq/*)
unset filename