#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/NBash/deep/function/2_ret_echo.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

fn(){

    is="$1"/43
    echo "$is"
}

is="aaa)))"

var=$(fn "$is")

echo -e "${GREEN}\$var = $var${NORMAL}" #print variable

unset filename