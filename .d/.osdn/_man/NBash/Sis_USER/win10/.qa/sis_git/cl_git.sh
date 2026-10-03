#!/bin/bash

. "$HOME/.qa/lib/1_ini.sh"
. "$HOME/.qa/sis_git/git_utils.sh"
. "$HOME/.qa/sis_git/git_enter.sh"

filename="$HOME/.qa/sis_git/cl_git.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

e_git

q_push() {
    echo -e "${CYAN}---q_push()---${NORMAL}" #started functions

    for repo_name in ${repo_arr_name[@]}; do

        cdrepo $repo_name
        cd Bat/sis/

        . 2_push_to_git.bash

    done

}

export q_push

q_pull() {
    echo -e "${CYAN}---q_pull()---${NORMAL}" #started functions

    for repo_name in ${repo_arr_name[@]}; do

        cdrepo $repo_name
        cd Bat/sis/

        . 1_pull_from_git.bash

    done

}

export q_pull

q_ls() {
    echo -e "${CYAN}---q_ls()---${NORMAL}" #started functions

    q_pull
    q_push
}

export q_ls

q_rs() {
    echo -e "${CYAN}---q_lr()---${NORMAL}" #started functions

    PS3="choise repo for update: "

    select repo_name in "${repo_arr_name[@]}"; do

        repo_for_update=$repo_name

        echo -e "${GREEN}\$repo_for_update = $repo_for_update${NORMAL}" #print variable

        break
    done

    if [ "$repo_for_update" == "" ]; then

        e_exer "\$repo_for_update = $repo_for_update$ NOT CORRECT" "$filename" "$LINENO"

    fi

    echo -e "${ULINE}cdrepo $repo_for_update${NORMAL}" #repit commands
    cdrepo $repo_for_update

    echo -e "${ULINE}cd Bat/sis/${NORMAL}" #repit commands
    cd Bat/sis/ || e_exer "cd error" "$filename" "$LINENO"

    echo -e "${ULINE}. 1_pull_from_git.bash${NORMAL}" #repit commands
    . 1_pull_from_git.bash

    echo -e "${ULINE}cdrepo $repo_for_update${NORMAL}" #repit commands
    cdrepo $repo_for_update

    echo -e "${ULINE}cd Bat/sis/${NORMAL}" #repit commands
    cd Bat/sis/ || e_exer "cd error" "$filename" "$LINENO"

    echo -e "${ULINE}. 2_push_to_git.bash${NORMAL}" #repit commands
    . 2_push_to_git.bash

    

    unset repo_for_update
    unset repo_name

}

export q_rs

q_init() {

    echo -e "${RED}---q_init INIT ? you push all before? [y]/n---${NORMAL}" #exit 1

    echo -e "${ULINE}read $yess${NORMAL}" #repit commands
    read -r yess
    echo -e "${GREEN}\$yess = $yess${NORMAL}" #print variable

    if [ "$yess" == "y" ]; then
        . "$HOME/.qa/sis_git/git_init.sh"
    else
        echo -e "${BLUE}---good by)))---${NORMAL}" #sistem info mesage
    fi

    unset yess
}

export q_init

unset filename
