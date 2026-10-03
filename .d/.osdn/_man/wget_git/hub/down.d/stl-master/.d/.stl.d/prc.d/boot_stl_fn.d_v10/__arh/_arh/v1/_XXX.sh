#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

_XXX() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#

    local fn_sh_file=${STL_D_PATH}/prc.d/boot_stl_fn.d/_XXX.sh
    local d_name=$(dirname ${fn_sh_file})

    if [ -n "$1" ] && [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: 
TAGS:
ARGS: [\$1] 
CNTL: 
    _go : edit_boot_stl_fn() body : edit_boot_stl_fn file://${fn_sh_file}       
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( if ... return 0 | if ... return 1 )
EXAM:
    ${FNN} 
${NORMAL}"
        cd "$PPWD" ||
            return 0
    fi

    if [ -n "$1" ] && [ "_go" == "$1" ]; then
        edit_boot_stl_fn ${d_name}
        cd "$PPWD" ||
            return 0
    fi

    #?------------ START BODY _XXX ------------

    #{{body_fn}}

    #?------------ END BODY _XXX ------------

    cd "$PPWD" ||
        return 0

}
