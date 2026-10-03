#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/NBash/main_fiches/yes_no.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

q_init_() {

    echo -e "${RED}---q_init INIT ? you push all before? [y]/n---${NORMAL}" #exit 1

    echo -e "${ULINE}read $yess${NORMAL}" #repit commands
    read -r yess
    echo -e "${GREEN}\$yess = $yess${NORMAL}" #print variable

    if [ "$yess" == "y" ]; then
        echo -e "${BLUE}---succsess enter)))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---good by(((---${NORMAL}" #sistem info mesage
    fi

    unset yess
}

unset filename