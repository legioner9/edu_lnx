#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/expr/arithm.sh" 

echo -e "${HLIGHT}---start file://$filename with args: $@ ---${NORMAL}" # start file

idir=$(pwd)
rdir="$(prs_f -d $filename)"
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


garg_ $(prs_f -n $filename) $@ 1>/dev/null
#----------------------------------------------------------------------
#-------------------------------------
#-------------------------------

a=2
b=3

echo $(expr $a + $b)

A=$(( 4 + 5 ))
echo $A # 9

A=$((3+5))
echo $A # 8

B=$(( A + 3 ))
echo $B # 11

B=$(( $A + 4 ))
echo $B # 12

(( B++ ))
echo $B # 13

(( B += 3 ))
echo $B # 16

A=$(( 4 * 5 ))
echo $A # 20



#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------



cd "$idir"

unset filename