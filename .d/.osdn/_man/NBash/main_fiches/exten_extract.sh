#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/NBash/main_fiches/exten_extract.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git


FILE="example.tar.gz"

echo "${FILE%%.*}"
# example

echo "${FILE%.*}"
# example.tar

echo "${FILE#*.}"
# tar.gz

echo "${FILE##*.}"
# gz

unset FILE
unset filename