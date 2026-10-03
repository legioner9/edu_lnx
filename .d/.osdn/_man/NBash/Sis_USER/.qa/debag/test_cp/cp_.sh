#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/.qa/debag/cp_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git
# echo $(cp "/.os/dir1" "/.os/dir2")

cd "/home/st/.qa/debag/" 

if cp -rf dir/a dir/b; then
    echo -e "${BLUE}---cp -rf dir/a dir/b succsess---${NORMAL}" #sistem info mesage
else

    echo -e "${BLUE}---cp -rf dir/a dir/b fail---${NORMAL}" #sistem info mesage
    qq_pause "cd fail" "$filename" "$LINENO"
fi
# echo -e "${GREEN}\$output = $output${NORMAL}" #print variable
echo -e "${BLUE}---continue)))---${NORMAL}" #sistem info mesage
unset filename