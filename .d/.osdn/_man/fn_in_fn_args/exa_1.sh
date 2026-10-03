#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/fn_in_fn_args/exa_1.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


# garg_ $(prs_f -n $filename) $@ 1>/dev/null

 f_in(){
    echo -e "${GREEN}\$@ = $*${NORMAL}" #print variable
 }

f1(){
    f_in ins "$@"
}

f1 a b c

cd "$idir"

unset filename