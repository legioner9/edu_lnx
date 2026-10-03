#!/bin/bash

#. "$HOME/.bashrc"

filename_="/home/st/.qa/debag/gurgite/ostium.this.sh"

echo -e "${HLIGHT}---start file: $filename_---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

echo -e "${GREEN}\$filename_ = $filename_${NORMAL}" #print variable

cd "$(dirname $filename_)" 

echo -e "${GREEN}\$(pwd) = $(pwd)${NORMAL}" #print variable



unset filename_