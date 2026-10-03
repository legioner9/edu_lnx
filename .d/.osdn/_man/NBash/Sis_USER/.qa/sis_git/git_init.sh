#!/bin/bash

# . $HOME/.qa/sis_git/git_utils.sh
# . $HOME/.qa/sis_git/up_git_memory.sh

filename="$HOME/.qa/sis_git/git_init.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#upgit

unset filename

# upgit

git config --global user.email "legioner9@inbox.ru"

git config --global user.name "$did"

git config --global core.editor "vim"

# ifgit

# e_git

# echo -e "${GREEN}\$did = $did${NORMAL}"
# echo -e "${GREEN}\$repo_path = $repo_path${NORMAL}"
# echo -e "${GREEN}\$bare_arr_path = ${bare_arr_path[*]}${NORMAL}"
# echo -e "${GREEN}\$clone_path = $clone_path${NORMAL}"
# echo -e "${GREEN}\$repo_arr_name = ${repo_arr_name[*]}${NORMAL}"

# clone_init() {

    # echo -e "${CYAN}---clone_init()---${NORMAL}"

    # echo -e "${ULINE}cd "$repo_path"${NORMAL}" #repit commands
    # cd "$repo_path" || e_exer "cd error" "$filename" "$LINENO"

    # echo -e "${ULINE}git init${NORMAL}" #repit commands
    # git init

    # echo -e "${ULINE}git clone --recurse-submodules "$clone_path"/_repo.git${NORMAL}" #repit commands
    # git clone --recurse-submodules "$clone_path"/_repo

    # echo -e "${ULINE}git clone --recurse-submodules "$clone_path"/_bare.git${NORMAL}" #repit commands
    # git clone --recurse-submodules "$clone_path"/_bare

# }

bare_fs() { # $1="$bare_path"

    echo -e "${CYAN}---bare_fs() \$bare_path=$1---${NORMAL}" #started functions

    for repo_name in "${repo_arr_name[@]}"; do

        echo -e "${ULINE}mkdir $1/$repo_name${NORMAL}" #repit commands
        mkdir $1/$repo_name

        echo -e "${ULINE}cd $1/$repo_name${NORMAL}" #repit commands
        cd $1/$repo_name || e_exer "cd error" "$filename" "$LINENO"

        echo -e "${ULINE}git init --bare${NORMAL}" #repit commands
        git init --bare

    done

}

create_bare() {

    echo -e "${CYAN}---create_bare()---${NORMAL}"

    for bare_path in "${bare_arr_path[@]}"; do
        # echo "$bare_path"

        if [ -d $bare_path ]; then

            echo -e "${BLUE}---dir \$bare_path $bare_path exist remove and create that---${NORMAL}"

            echo -e "${ULINE}rm -fr $bare_path" #repit commands
            rm -fr "$bare_path"

        else
            echo -e "${BLUE}---dir \$bare_path $bare_path not exist create that---${NORMAL}"

        fi

        echo -e "${ULINE}mkdir $bare_path${NORMAL}" #repit commands
        mkdir "$bare_path"

        echo -e "${ULINE}cd $bare_path${NORMAL}" #repit commands
        cd "$bare_path" || e_exer "cd error" "$filename" "$LINENO"

        # echo -e "${ULINE}git init --bare${NORMAL}" #repit commands
        # git init --bare

        echo -e "${ULINE}bare_fs $bare_path${NORMAL}" #repit commands
        bare_fs "$bare_path"

    done

    echo -e "${ULINE}rm -fr $repo_path/_bare${NORMAL}" #repit commands
    rm -fr "$repo_path/_bare"

    echo -e "${ULINE}mkdir $repo_path/_bare${NORMAL}" #repit commands
    mkdir "$repo_path/_bare"

    echo -e "${ULINE}cd $repo_path/_bare${NORMAL}" #repit commands
    cd "$repo_path"/_bare || e_exer "cd error" "$filename" "$LINENO"

    # echo -e "${ULINE}git init --bare${NORMAL}" #repit commands
    # git init --bare

    echo -e "${ULINE}bare_fs $repo_path/_bare${NORMAL}" #repit commands
    bare_fs "$repo_path/_bare"
}

add_bare() { # $1="$repo_name"

    echo -e "${CYAN}---add_bare()---${NORMAL}"

    echo -e "${ULINE}cd $repo_path${NORMAL}" #repit commands
    cd "$repo_path"/_repo/"$1" || e_exer "cd error" "$filename" "$LINENO"

    for bare_path in "${bare_arr_path[@]}"; do
        name_bare=$(basename "$bare_path")

        echo -e "${ULINE}git remote add $name_bare $bare_path${NORMAL}" #repit commands
        git remote add "$name_bare" "$bare_path/$1"
        git remote add _bare "$repo_path/_bare/$1"
    done

}

clone_repo() { 

    echo -e "${CYAN}---clone_repo()---${NORMAL}"

    echo -e "${ULINE}rm -fr "$repo_path"/_repo${NORMAL}" #repit commands
    rm -fr "$repo_path"/_repo

    echo -e "${ULINE}mkdir "$repo_path"/_repo/_repo${NORMAL}" #repit commands
    mkdir "$repo_path"/_repo

    for repo_name in "${repo_arr_name[@]}"; do

        echo -e "${ULINE}cd $repo_path/_repo${NORMAL}" #repit commands
        cd "$repo_path"/_repo || e_exer "cd error" "$filename" "$LINENO"

        echo -e "${ULINE}git clone $clone_path/$repo_name.git${NORMAL}" #repit commands
        git clone "$clone_path/$repo_name"

        echo -e "${ULINE}add_bare $repo_name${NORMAL}" #repit commands
        add_bare "$repo_name"

    done

}

echo -e "${ULINE}mkdir_path "$repo_path"${NORMAL}" #repit commands
mkdir_path "$repo_path"
# echo -e "${ULINE}clone_init${NORMAL}" #repit commands
# clone_init
echo -e "${ULINE}create_bare${NORMAL}" #repit commands
create_bare
echo -e "${ULINE}clone_repo${NORMAL}" #repit commands
clone_repo

unset filename
