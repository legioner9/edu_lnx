#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

source_boot_stl_fn() { # wrap [source $1]

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    echo -e "${CYAN}--- $FNN() $* ---${NORMAL}"
    # cd $PPWD || return 1
    # return 0

    local s_file="$1"

    if [ -f ${s_file} ]; then

        source ${s_file} || {
            echo "EXEC_FAIL : 'source ${s_file}'" >&2
        }

    else
        echo "NOT_FILE : '${s_file}' :: return 1" >&2
        cd $PPWD || 
        return 1
    fi

    cd $PPWD || 
    return 0

}
