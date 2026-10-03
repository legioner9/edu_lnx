#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/fiches_array/my_for_arr.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

_my_for_arr_=()

for item in *; do
    _my_for_arr_+=("$item")
done

echo -e "${GREEN}\${_my_for_arr_[@]} = ${_my_for_arr_[*]}${NORMAL}" #print variable

for item in "${_my_for_arr_[@]}"; do
echo -e "${BLUE}---from for: $item---${NORMAL}" #sistem info mesage
done


#up_lib_git ${FUNCNAME[0]}

unset filename
