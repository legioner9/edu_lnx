#!/bin/bash

#. "$HOME/.bashrc"

# filename="${COMMUNIS_PATH}/NBash/main_fiches/copy_arr_with_war_name.sh"

# echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

# path=${COMMUNIS_PATH}/NBash/main_fiches/dir/file.var

# arr=$(cat "$path")

arr=(1 2 6)

# name="copy_arr"
# _copy_arr="www"

# tmp=_$name

# echo ${!tmp} # www

# declare -a ${!tmp}

cname="arr_copy"

declare $cname=("${arr[*]}")

echo ${arr_copy[0]}
echo ${arr_copy[1]}

# IFS=', ' read -r -a array <<< "$string"


echo -e "${GREEN}\${arr_copy[@]} = ${arr_copy[*]}${NORMAL}" #print variable

unset filename