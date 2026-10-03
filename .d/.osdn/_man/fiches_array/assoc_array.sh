#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/fiches_array/assoc_array.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

declare -A assoc_array

assoc_array[first]=первый
assoc_array[last]=последний

echo ${assoc_array[first]}
echo ${assoc_array[last]}

unset filename
