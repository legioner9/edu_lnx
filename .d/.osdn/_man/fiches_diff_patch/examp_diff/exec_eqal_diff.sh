#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/fiches_diff_patch/examp_diff/exec_eqal_diff.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

if diff -q ./a1 ./a2 >/dev/null; then
    echo "files a1=a2" >&1
else
    echo "files a1!=a2" >&2
fi

unset filename
