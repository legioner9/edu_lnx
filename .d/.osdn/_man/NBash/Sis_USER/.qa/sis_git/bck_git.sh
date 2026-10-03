#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/.qa/sis_git/bck_git.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

q_bck() { # $repo_path=$repo_path $1=$did

    echo -e "${CYAN}---q_bck()---${NORMAL}" #started functions

    # if ! [ -d $repo_path/_repo/communis/Sis_USER/$1/ ]; then
    #     mkdir "$repo_path/_repo/communis/Sis_USER/$1/"
    # fi

    # if ! [ -d $repo_path/_repo/communis/Store/Vs/$1/ ]; then
    #     mkdir "$repo_path/_repo/communis/Store/Vs/$1/"
    # fi

    echo -e "${ULINE}rm -rf "$repo_path/_repo/communis/Sis_USER/$1/.os"${NORMAL}" #repit commands
    rm -rf "$repo_path/_repo/communis/Deploy_store/.os"

    echo -e "${ULINE}cp -rf "$HOME/.os" "$repo_path/_repo/communis/Sis_USER/$1/"${NORMAL}" #repit commands
    cp -rf "$HOME/.os" "$repo_path/_repo/communis/Deploy_store/"

    echo -e "${ULINE}rm -rf "$repo_path/_repo/communis/Sis_USER/$1/.qa"${NORMAL}" #repit commands
    rm -rf "$repo_path/_repo/communis/Deploy_store/.qa"

    echo -e "${ULINE}cp -rf "$HOME/.qa" "$repo_path/_repo/communis/Sis_USER/$1/"${NORMAL}" #repit commands
    cp -rf "$HOME/.qa" "$repo_path/_repo/communis/Deploy_store"

    # echo -e "${ULINE}rm -rf "$repo_path/_repo/communis/Sis_USER/$1/.qa"${NORMAL}" #repit commands
    # rm -rf "$repo_path/_repo/communis/Sis_USER/$1/sis"

    # echo -e "${ULINE}cp -rf "cp -rf "$repo_path/_repo/communis/Bat/sis" "$repo_path/_repo/communis/Sis_USER/$1/""${NORMAL}" #repit commands
    # cp -rf "$repo_path/_repo/communis/Bat/sis" "$repo_path/_repo/communis/Sis_USER/$1/"

    echo -e "${ULINE}cd "$HOME/.vscode"${NORMAL}" #repit commands
    cd "$HOME/.vscode/extensions" || e_exer "cd err" "$filename" "$LINENO"

    echo -e "${ULINE}ls > "$repo_path/_repo/communis/Store/Vs/$1/vs_extensions.md"${NORMAL}" #repit commands
    ls >"$repo_path/_repo/communis/Store/Vs/$1/vs_extensions.md"

    echo -e "${ULINE}cp -rf "$HOME/.config/Code/User/snippets" "$repo_path/_repo/communis/Store/Vs/"${NORMAL}" #repit commands
    cp -rf "$HOME/.config/Code/User/snippets" "$repo_path/_repo/communis/Store/Vs/"

    # echo -e "${ULINE}cp -rf "$HOME/.vscode" "$repo_path/_repo/communis/Store/Vs/$1/"${NORMAL}" #repit commands
    # cp -rf "$HOME/.vscode" "$repo_path/_repo/communis/Store/Vs/$1/"

    # echo -e "${ULINE}rm -rf "$repo_path/_repo/communis/Store/Vs/$1/.vscode_"${NORMAL}" #repit commands
    # rm -rf "$repo_path/_repo/communis/Store/Vs/$1/.vscode_"

    # echo -e "${ULINE}mv "$repo_path/_repo/communis/Store/Vs/$1/.vscode" "$repo_path/_repo/communis/Store/Vs/$1/.vscode_"${NORMAL}" #repit commands
    # mv "$repo_path/_repo/communis/Store/Vs/$1/.vscode" "$repo_path/_repo/communis/Store/Vs/$1/.vscode_"

    echo -e "${ULINE}cp -f "$HOME/.bashrc" "$repo_path/_repo/communis/Deploy_store"${NORMAL}" #repit commands
    cp -f "$HOME/.bashrc" "$repo_path/_repo/communis/Deploy_store"

    echo -e "${ULINE}cp -f "$HOME/.gitrepo" "$repo_path/_repo/communis/Deploy_store"${NORMAL}" #repit commands
    cp -f "$HOME/.gitrepo" "$repo_path/_repo/communis/Deploy_store"

    echo -e "${ULINE}cp -f "$HOME/.gituid" "$repo_path/_repo/communis/Deploy_store"${NORMAL}" #repit commands
    cp -f "$HOME/.gituid" "$repo_path/_repo/communis/Deploy_store"

}

export q_bck

unset filename
