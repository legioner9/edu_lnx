#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

is_yes_boot_stl_fn() { # $1 str question

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    # echo "$FNN() $*"

    # cd "$PPWD" || return 1
    # return 0

    local yes

    read -r -p "only 'y' is yes. QUESTION :: '$1' " yes

    if [ "${yes:-no}" == "y" ]; then
        cd "$PPWD" || return 1
        return 0
    else
        cd "$PPWD" || return 1
        return 1
    fi

}
