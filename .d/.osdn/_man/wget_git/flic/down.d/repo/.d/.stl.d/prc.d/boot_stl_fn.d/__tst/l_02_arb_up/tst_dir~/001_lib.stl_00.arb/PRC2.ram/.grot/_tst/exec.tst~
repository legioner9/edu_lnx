#!/bin/bash

___PRC_TST2() {

    # if ! command -v _PRC >/dev/null; then
    #     l_00_echo_err "TYPE_ERROR : _PRC" >&2
    #     return 1
    # fi

    # # local filename=${STL_LIB_D_PATH}/{{lib_name_dir_arb}}/_PRC.ram/.grot/_tst/exec.tst
    # local filename=${STL_LIB_D_PATH}/001_lib.stl_00.arb/_PRC.ram/.grot/_tst/exec.tst

    # local idir=$(pwd)

    # # cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

    # local dir=$(_prs_f -d "$filename")

    # cd "${dir}" || {
    #     l_00_echo_err "${dir} not dir" >&2
    #     return 1
    # }

    # . "$dir"/_flow_tst.sh &>/dev/null

    # # . "$dir"/_flow_tst.sh &>res

    # #? if res, pre dirs -> diff -qr | diff -r

    # local flag=1
    # if ! diff -q "$dir"/pre "$dir"/res >/dev/null; then
    #     flag=0
    # fi

    # if [ 0 -eq "$flag" ]; then
    #     l_00_echo_err "ANY in file://$dir fail" >&2
    #     diff "$dir"/pre "$dir"/res >&2
    #     cd "$idir"
    #     return 1
    # else
    #     l_00_echo_info "ALL in file://$dir true"
    #     cd "$idir"
    #     return 0
    # fi

    # cd "$idir"

    return 1

}

if ! ___PRC_TST2 "$@"; then
    l_00_echo_err "in fs= file://${STL_LIB_D_PATH}/{{lib_name_dir_arb}}/_PRC.ram/.grot/_tst/exec.tst , line=${LINENO}: : EXEC_FAIL : '___PRC_TST ' : ${hint} : return 1"
    return 1
fi
