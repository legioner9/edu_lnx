#!/bin/bash

. "$HOME/.bashrc"

filename="/home/st/ProjectRepo_2/_repo/communis/NBash/tmp/arr_arg.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

copyFiles(){

   for i in "$@";
      do
          echo "$i"
      done

}

copyFiles ${repo_arr_name[*]}
array=("one" "two" "three")

copyFiles "${array[*]}"
unset filename
