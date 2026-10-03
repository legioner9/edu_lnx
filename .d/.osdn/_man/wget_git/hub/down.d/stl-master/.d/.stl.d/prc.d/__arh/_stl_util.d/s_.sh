#!/bin/bash

s_() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    echo "$FNN() $*"

    # cd "$PPWD" || return 1
    # return 0

    if [[ "-h" == "$1" ]]; then
        echo -e "
        # STL help
        ## Files
        entry point STL:
            file://${STL_D_PATH}/.stldrc 
        opus STL lib:
            file://${HOME}/
        opus STL boot:
            file://${STL_D_PATH}/data.d/opus.d/boot.opus/cntx.res.md


"
        cd "$PPWD" || return 1
        return 0
    fi

    . ${STL_D_PATH}/.stldrc

    cd "$PPWD" || return 1
    return 0

}
