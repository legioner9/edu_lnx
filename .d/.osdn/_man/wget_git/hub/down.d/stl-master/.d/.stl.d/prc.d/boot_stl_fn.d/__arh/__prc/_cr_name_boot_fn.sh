#!/bin/bash

in_fn_123rffrhw1() {

    if ! command -v _sf2f >/dev/null; then
        echo "EXEC_FAIL : 'command -v _sf2f' : return 1" >&2
        return 1
    fi

    local arg1="$1"

    [ -n "$1" ] || {
        echo "ARG1 empty :: will use for create ARG1_boot_stl_fn.sh" >&2
        return 1
    }

    local prc_boot_dir=${STL_D_PATH}/prc.d/boot_stl_fn.d

    if command -v ${arg1}_boot_stl_fn; then
        hint="\$1: name create ${arg1}_boot_stl_fn"
        echo "EXEC_TRUE : 'command -v ${arg1}_boot_stl_fn' " >&2
        
        _is_yes "WARRANTY : continue rewrite define ${arg1}_boot_stl_fn?" || return 1
    fi


    # is_yes_boot_stl_fn "cr ${arg1}_boot_stl_fn() in file://${prc_boot_dir}/${arg1}_boot_stl_fn.sh" && {
    _is_yes "cr ${arg1}_boot_stl_fn() in file://${prc_boot_dir}/${arg1}_boot_stl_fn.sh" && {

        _sf2f _XXX ${arg1}_boot_stl_fn ${prc_boot_dir}/_XXX.sh

    }

}

in_fn_123rffrhw1 "$1"
