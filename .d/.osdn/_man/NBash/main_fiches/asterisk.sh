#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/NBash/main_fiches/asterisk.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

unset filename

cd ${COMMUNIS_PATH}/NBash/main_fiches/

declare i
i=0

for item in * ; do
    
    echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
    
    _ls_[i]="$item"
    ((i++))
    
done