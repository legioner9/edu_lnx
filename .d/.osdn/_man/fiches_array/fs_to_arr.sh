#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/fiches_array/fs_to_arr.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

array=($(ls /))

PF=$PATH_FN/dir_f_f_/_f_f_/_man
# arr=( $(find "$PF" -type f -name "*.man" | xargs -0 file grep -n "^#" file) )

find "$PF" -type f -name "*.man" | xargs grep -n "^#"

unset item

IFS=$'\n'

for item in $(find "$PF" -type f -name "*.man" | xargs grep -n "^#"); do
    echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
done

unset filename
