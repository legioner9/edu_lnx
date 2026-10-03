#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/time_conditions/time_variant/tv.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

echo -e "${BLUE}--- date +%s -r 0 ---${NORMAL}" #sistem info mesage

date +%s -r 0

cd "$idir"

unset filename