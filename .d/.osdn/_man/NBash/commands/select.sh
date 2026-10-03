#!/bin/bash

. "$HOME/.bashrc"

filename="/home/st/ProjectRepo_2/_repo/communis/NBash/commands/select.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

PS3="choise repo: "

select repo_name in "${repo_arr_name[@]}"; do

echo -e "${GREEN}\$repo_name = $repo_name${NORMAL}" #print variable
repo=$repo_name
break

done
echo -e "${GREEN}\$repo = $repo${NORMAL}" #print variable
echo -e "${HLIGHT}---end)))---${NORMAL}" #start files
#up_lib_git

unset filename