#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

err_boot_stl_fn() {

    local PPWD=$PWD

    local arg1="$1"

    if [[ -z "${arg1}" ]]; then
        echo "err_boot_stl_fn() : \$1 NOT_DEFINE : return 1" 1>&2
        return 1
    fi
    if [[ "/" == "${arg1:0:1}" ]]; then
        cd $PPWD
        return 0
    else
        cd $PPWD
        return 1
    fi
}
