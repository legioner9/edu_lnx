#!/bin/bash

f() {
    local tst_dir=${REPO_PATH}/NBash/_man/write_to_file/tst_dir
    cd "${tst_dir}" || return 1
    # cat >FILE.txt <<EOF
    VAR=Test
    #* i interactiv mode vim
    #* ^[ escape key
    #* ZZ write end exit vim
    vi FILE.txt <<EOFXX
i
#This is my var in text file
var = $VAR
#Thats end of text file
^[
ZZ
EOFXX
    return 0
}

f
