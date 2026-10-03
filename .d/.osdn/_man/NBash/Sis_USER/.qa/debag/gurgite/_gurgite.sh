#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/.qa/debag/gurgite/_gurgite.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

PWDD=$(pwd)

echo -e "${GREEN}\$PWDD = $PWDD${NORMAL}" #print variable


#up_lib_git

unset filename