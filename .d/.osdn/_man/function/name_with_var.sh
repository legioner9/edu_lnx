#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/REPOBARE/_repo/NBash/_man/function/name_with_var.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


# garg_ $(prs_f -n $filename) $@ 1>/dev/null

i=22

fn_!i(){
    echo -e "${GREEN}\$FUNCNAME = $FUNCNAME${NORMAL}" #print variable

    echo "i=${i}"
}

fn_!i




cd "$idir"

unset filename