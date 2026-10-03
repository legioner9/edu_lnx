#!/bin/bash

f() {
    local tst_dir=${REPO_PATH}/NBash/_man/write_to_file/tst_dir
    cd "${tst_dir}" || return 1
    # cat >FILE.txt <<EOF
    cat >FILE.txt <<<"sdfgb
    vsdfv
    vdf
    vdsf

    rttt"
    cat FILE.txt
    return 0
}

f
