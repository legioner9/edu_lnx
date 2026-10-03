#!/bin/bash

local file_sh=${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/001.inject_fn_ham.sh

echo -e "${BLUE}--- that file://${file_sh} ---${NORMAL}" #sistem info mesage
# echo -e "${HLIGHT}--- git_reset__() ---${NORMAL}"

source_inject_fn_ham(){ # safe wrap [source $1] 

local file_to_source="$1"

if [ -f ${file_to_source} ]; then

    . ${file_to_source} || {
        echo "in fs= file://${file_sh} , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '. ${rbld_file}' : ${hint} : return 1" >&2
        return 1
    }

fi
}