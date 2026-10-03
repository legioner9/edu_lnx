#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/fiches_array/matrix_arr.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

declare -A matr

matr[0, 0]=0
matr[0, 1]=1
matr[1, 0]=2
matr[1, 1]=3

for ((i = 0; i < 2; i++)); do

    for ((j = 0; j < 2; j++)); do
        echo $i $j ${matr[$i, $j]}
    done

done

# echo "${matr[0,0]} ${matr[0,1]}"

unset matr

unset filename
