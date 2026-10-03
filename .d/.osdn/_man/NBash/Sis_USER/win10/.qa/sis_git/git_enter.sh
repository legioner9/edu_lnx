#!/bin/bash

# "$HOME/.bashrc"

filename="/home/st/.qa/debag/git_enter.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

qq_enter(){

echo -e "${CYAN}---q_enter()---${NORMAL}" #started functions

arr_enter=("update_all" "update_repo" "init_all")

PS3="eligendi actiones: "

select dilectus in "${arr_enter[@]}"; do

echo -e "${GREEN}\$dilectus = $dilectus${NORMAL}" #print variable
break

done


case $dilectus in

"update_all")

echo -e "${CYAN}---update_all q_ls()---${NORMAL}" #started functions
rpp
q_ls

;;

"update_repo")

echo -e "${CYAN}---update_repo q_rs()---${NORMAL}" #started functions
rpp
q_rs

;;

"init_all")

echo -e "${CYAN}---update_all q_ls()---${NORMAL}" #started functions
rpp
q_ls
echo -e "${CYAN}---init_all q_init()---${NORMAL}" #started functions
rpp
q_init

;;

*)

echo -e "${BLUE}---dilectus is wrong---${NORMAL}" #sistem info mesage
rpp

;;
esac

}


unset filename