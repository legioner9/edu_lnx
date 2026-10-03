#!/bin/bash

PWDD=$(pwd)
filename="$PWDD/stand_file.sh"

echo -e "${HLIGHT}---start file: $filename--${NORMAL}" # start file

. "$HOME/.qa/lib/1_ini.sh"

e_exer "Questions? See far!" "$filename" "$LINENO"

unset filename
unset PWDD