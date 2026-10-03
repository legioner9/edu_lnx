#!/bin/bash

# . "$HOME/.bashrc"

filename="/home/st/.qa/sis_git/git_refr.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

now_arr_repo() {

    cd "$repo_path"/_repo

    _now_arr_repo_=()

    for now_repo in $(ls); do

        echo -e "${GREEN}\$now_repo = $now_repo${NORMAL}" #print variable

        _now_arr_repo_+=( "$now_repo" )

    done

    export _now_arr_repo_

}

git_refresh() {
    echo -e "${CYAN}---git_refresh()---${NORMAL}" #started functions

}

now_arr_repo

unset filename
