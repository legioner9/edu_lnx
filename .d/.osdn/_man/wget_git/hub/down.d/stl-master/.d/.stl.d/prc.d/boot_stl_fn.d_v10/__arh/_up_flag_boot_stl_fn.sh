#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

up_flag_boot_stl_fn() { # $1 file with flag $2 name wariable of flag

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    echo "$FNN() $*"
    echo -e "${CYAN}--- $FNN() $* ---${NORMAL}"
    # cd $PPWD || return 1
    # return 0

    local file_flag="$1"
    local name_var_flag="$2"

    if [ -f ${file_flag} ]; then

        eval "is_stl_log=$\${name_var_flag}"
        var_flag=$(cat ${file_flag})

        [ -z "${var_flag}" ] && {
            echo " file://${file_flag} EXIST bat EMPTY :: return 1" >&2
            cd $PPWD || return 1
            return 1
        }

        [ 0 -ne ${var_flag} ] && [ 1 -ne ${var_flag} ] && {
            echo " file://${file_flag} EXIST bat NOT_CONTANE '1' or '0' :: return 1" >&2
            cd $PPWD || return 1
            return 1
        }

        eval "${name_var_flag}=${var_flag}"

    else
        
        warn_boot_stl_fn "echo 0 >${file_flag}"
        echo 0 >"${file_flag}"
        echo "${name_var_flag}=0"

    fi

    cd $PPWD || return 1
    return 0

}
