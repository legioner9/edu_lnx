#!/bin/bash

# . "$HOME/.bashrc"

filename="$HOME/.qa/sis_git/git_utils.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

. "$HOME/.qa/sis_git/up_git_memory.sh"

upgit

ifgit() {

    echo -e "${CYAN}---ifgit()---${NORMAL}"

    if [ "$fgit" -ne 0 ]; then

        echo -e "${RED}
        SISERROR-----------git files not complete--------------
        
       ${NORMAL}"

        # exit 1
    fi
}

export ifgit

e_git() {

    echo -e "${CYAN}---e_git()---${NORMAL}" #started functions

    echo -e "${GREEN}\$did = $did${NORMAL}"
    echo -e "${GREEN}\$repo_path = $repo_path${NORMAL}"
    echo -e "${GREEN}\$bare_arr_path = ${bare_arr_path[*]}${NORMAL}"
    echo -e "${GREEN}\$clone_path = $clone_path${NORMAL}"
    echo -e "${GREEN}\$repo_arr_name = ${repo_arr_name[*]}${NORMAL}"
}

export e_git

cdrepo() {

    echo -e "${CYAN}---cdrepo()---${NORMAL}"

    ifexrepo=1
    for repo_name in ${repo_arr_name[@]}; do
        if [ $repo_name = $1 ]; then
            ifexrepo=0
            if [ -d "$repo_path"/_repo/"$1" ]; then

                echo -e "${ULINE}cd "$repo_path"/_repo/"$1"${NORMAL}" #repit commands
                cd "$repo_path"/_repo/"$1" || e_exer "cd error" "$filename" "$LINENO"

                echo -e "${BLUE}---cd "$repo_path"/_repo/"$1" successus ---${NORMAL}"
                unset repo_name
            
            fi
        fi
    done

    if [ $ifexrepo -eq 1 ]; then

        # echo -e "${RED}---"$repo_path"/_repo/"$1" not exist---${NORMAL}"
        # exit 1

        e_exer "$repo_path/_repo/$1 not exist" "$filename" "$LINENO"

    fi

    unset ifexrepo
}

export cdrepo # $1=repo_name



unset filename