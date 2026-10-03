#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/time_conditions/flow_replace_old/replace_old.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

copy=${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/time_conditions/flow_replace_old/copy
orig=${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/time_conditions/flow_replace_old/orig

if [ "$copy" -ot "$orig" ]; then
    echo -e "${BLUE}---be copied---${NORMAL}" #sistem info mesage
    cp "$orig" "$copy"
fi

unset filename
