#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

i=1
cd_h "C:\U"

while [ $i -lt 3 ] ; do
touch $i.man
((i++))
done

unset filename