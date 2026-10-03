#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/if_return_echo/2.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


# garg_ $(prs_f -n $filename) $@ 1>/dev/null

e1r0(){
    echo "1"
    return 0
}

e2r0(){
    echo "2" >&2
    return 0
}

e2(){
    echo "2" >&2
}

e1(){
    echo "1"
}

r0(){
    return 0
}

r1(){
    return 1
}

e1r1(){
    echo "1"
    return 1
}

e2r1(){
    echo "2" >&2
    return 1
}

rr_

if2e e1
if2e e2
if2e r0
if2e r1
if2e ls /
if2e ls /cwsde



cd "$idir"

unset filename