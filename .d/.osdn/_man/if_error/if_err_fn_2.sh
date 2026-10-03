#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/if_error/if_err_fn.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

fn_err() {
    echo "err" >&2 # result FALSE
}
fn_tru() {
    echo "tru" >&1 # result TRUE
}

wrap_null_tru() {
    fn_tru 1>/dev/null # result FALSE
}

wrap_null_err() {
    fn_err 2>/dev/null # result FALSE
}

wrap_null_err_tru() {
    fn_err 2>&1 # result TRUE
}

if [ "$(fn_err)" ]; then
    echo "result TRUE"
else
    echo "result FALSE"
fi

if [ "$(fn_tru)" ]; then
    echo "result TRUE"
else
    echo "result FALSE"
fi

if [ "$(wrap_null_tru)" ]; then
    echo "result TRUE"
else
    echo "result FALSE"
fi

if [ "$(wrap_null_err)" ]; then
    echo "result TRUE"
else
    echo "result FALSE"
fi

if [ "$(wrap_null_err_tru)" ]; then
    echo "result TRUE"
else
    echo "result FALSE"
fi

#up_lib_git ${FUNCNAME[0]}

unset filename
unset fn_err
unset fn_tru
unset wrap_null
