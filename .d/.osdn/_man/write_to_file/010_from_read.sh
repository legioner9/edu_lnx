#!/bin/bash

f() {
    local tst_dir=${REPO_PATH}/NBash/_man/write_to_file/tst_dir
    cd "${tst_dir}" || return 1

    while IFS= read -r line; do
        echo "$line"
    done <"$1"
    return 0
}

f for_read.txt
