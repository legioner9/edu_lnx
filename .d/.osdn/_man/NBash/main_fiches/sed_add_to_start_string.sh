#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/NBash/main_fiches/sed_add_to_start_string.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

sed 's/^/Require not ip /' hola.ip

unset filename