#!/bin/bash

f() {
    local tst_dir=${REPO_PATH}/NBash/_man/write_to_file/tst_dir
    cd "${tst_dir}" || return 1
    echo "some data for the file" >>fileName
    cat fileName
    return 0
}

f