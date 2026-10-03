#!/bin/bash

f() {
    local tst_dir=${REPO_PATH}/NBash/_man/write_to_file/tst_dir
    cd "${tst_dir}" || return 1
    # cat >FILE.txt <<EOF
    cat >FILE.txt <<EOF

info code info
info code info
info code info

EOF
    return 0
}

f
