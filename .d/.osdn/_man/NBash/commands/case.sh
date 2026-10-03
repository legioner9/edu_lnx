#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/ProjectRepo_2/_repo/communis/NBash/commands/case.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

fn_yn(){


echo " Do it? y/n  "
read yn


case $yn in

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
}

fn_yn

unset filename