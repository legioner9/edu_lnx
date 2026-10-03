#!/bin/bash

f() {
    local tst_dir=${REPO_PATH}/NBash/_man/write_to_file/tst_dir
    cd "${tst_dir}" || return 1
    # cat >FILE.txt <<EOF
    exec 3<>poem.txt

    # Let's print some text to fd 3
    echo "Roses are red" >&3
    echo "Violets are blue" >&3
    echo "Poems are cute" >&3
    echo "And so are you" >&3

    # Close fd 3
    exec 3>&-
    cat poem.txt
    return 0
}

f
