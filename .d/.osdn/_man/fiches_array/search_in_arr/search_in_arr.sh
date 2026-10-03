#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/fiches_array/search_in arr/search_in_arr.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


# garg_ $(prs_f -n $filename) $@ 1>/dev/null

arr=( a b c de )
echo -e "${GREEN}\${arr[@]} = ${arr[*]}${NORMAL}" #print variable
echo -e "${GREEN}\$1 = $1${NORMAL}" #print variable


[[ " ${arr[*]} " =~ " $1 " ]] && echo "true" || echo "false"

cd "$idir"

unset filename