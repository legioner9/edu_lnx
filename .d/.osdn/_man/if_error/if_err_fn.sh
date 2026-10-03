#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/if_error/if_err_fn.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

fn_err() {

    # echo "FAIL out" >&2
    echo "true out"    
        # echo "FAIL out" >&2
}

wrap(){
    # fn_err
    fn_err 1>/dev/null
}

if [ "$(echo "err" >&1)" ]; then
    echo "result TRUE"
else
    echo "result FALSE"
fi

#up_lib_git ${FUNCNAME[0]}

unset filename
unset fn_err
