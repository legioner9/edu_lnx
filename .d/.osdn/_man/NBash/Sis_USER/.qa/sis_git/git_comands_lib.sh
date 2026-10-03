#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/.qa/sis_git/git_comands_lib.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

git_pull() {

    echo -e "${CYAN}---git_pull()---${NORMAL}" #started functions

    echo -e "${ULINE}git submodule update --remote${NORMAL}" #repit commands
    git submodule update --remote

    echo -e "${ULINE}git pull origin master${NORMAL}" #repit commands
    git pull origin master
}

export git_pull

git_push() {

    echo -e "${CYAN}---git_push()---${NORMAL}" #started functions

    # echo -e "${GREEN}\$(pwd) = $(pwd)${NORMAL}" #print variable

    echo -e "${ULINE}git add .${NORMAL}" #repit commands
    git add .

    echo -e "${ULINE}git commit${NORMAL}" #repit commands
    git commit                            # debag

    echo -e "${ULINE}git push origin master${NORMAL}" #repit commands
    git push origin master

    echo -e "${ULINE}git push _bare master${NORMAL}" #repit commands
    git push _bare master

    for bare_path in "${bare_arr_path[@]}"; do

        bare_name=$(basename "$bare_path")

        echo -e "${ULINE}git push $bare_name master${NORMAL}" #repit commands
        git push "$bare_name" master

    done

}

export git_push

unset filename
