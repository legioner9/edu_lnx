#!/bin/bash

f() {
    local tst_dir=${REPO_PATH}/NBash/_man/write_to_file/tst_dir
    cd "${tst_dir}" || return 1
    # cat >FILE.txt <<EOF
    rm FILE.txt
    cat >FILE.txt <FILE_from.txt
    cat FILE.txt
    return 0
}

f
