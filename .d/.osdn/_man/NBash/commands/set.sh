#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/NBash/commands/set.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git



set -- Hello World
var=( "$@" )
for item in "${var[@]}"; do
    echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
done

msg=$*
echo -e "${GREEN}\$msg = $msg${NORMAL}" #print variable

unset filename