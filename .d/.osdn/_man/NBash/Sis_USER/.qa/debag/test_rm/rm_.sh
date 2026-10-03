#!/bin/bash

. "$HOME/.bashrc"

filename="/home/st/.qa/debag/test_rm/rm_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cd /home/st/.qa/debag/test_rm/

#  rm_h "dir/a" "$filename" "$LINENO"

mkdir_rm_h "dir/a" "$filename" "$LINENO"


unset filename