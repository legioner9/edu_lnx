#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/ProjectRepo_2/_repo/communis/NBash/commands/select_case.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git


echo "input word :"  

select repo_name in "${repo_arr_name[@]}"; do

echo -e "${GREEN}\$repo_name = $repo_name${NORMAL}" #print variable
repo=$repo_name
break

done

echo "analises ---"

case $repo_name in

"y")
echo -e "${BLUE}---y---${NORMAL}" #sistem info mesage
;;

"n")
echo -e "${BLUE}---n---${NORMAL}" #sistem info mesage
;;
*)
echo -e "${BLUE}---wtf?---${NORMAL}" #sistem info mesage
;;
esac

rpp

unset filename