#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/if_return_echo/1.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# garg_ $(prs_f -n $filename) $@ 1>/dev/null

if_1() {
    echo -e "${BLUE}--- if_1 $@ ---${NORMAL}" #sistem info mesage

    if $@; then
        echo "first"
    else
        echo "second"
    fi

}


if_2() {
    echo -e "${BLUE}--- if_2 $@ ---${NORMAL}" #sistem info mesage

    if [ $@ ]; then
        echo "first"
    else
        echo "second"
    fi

}

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

e1r1(){
    echo "1"
    return 1
}

e2r1(){
    echo "2" >&2
    return 1
}

if_1 e1r0
if_1 e2r0
if_1 e1r1
if_1 e2r1
if_1 e2
if_1 cd /
if_1 cd /dwe


if_2 e1r0
if_2 e2r0
if_2 e1r1
if_2 e2r1
if_2 e2
if_2 cd /
if_2 cd /dwe

cd "$idir"

unset filename
