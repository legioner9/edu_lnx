#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

source_boot_stl_fn() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#

    echo -e "${CYAN}--- $FNN() $* ---${NORMAL}"

    local fn_sh_file=${STL_D_PATH}/prc.d/boot_stl_fn.d/source_boot_stl_fn.sh
    local d_name
    d_name=$(dirname "${fn_sh_file}")

    if [ -n "$1" ] && [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: 
TAGS: @source
ARGS: [\$1] 
CNTL: 
    -h  : help for ${FNN}
    _go : edit_boot_stl_fn() body : edit_boot_stl_fn file://${fn_sh_file}       
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( if ... return 0 | if ... return 1 )
EXAM:
    ${FNN} 
${NORMAL}"
        cd "$PPWD" || echo "in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
        return 0
    fi

    if [ -n "$1" ] && [ "_go" == "$1" ]; then
        edit_boot_stl_fn "${d_name}"
        cd "$PPWD" || echo "in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
        return 0
    fi

    #?------------ START BODY source_boot_stl_fn ------------

    #{{body_fn}}

    if [ -f "${1}" ]; then

        source "${1}" || {
            echo "EXEC_FAIL : 'source ${1}'" >&2
        }

    else
        echo "NOT_FILE : '${1}' :: return 1" >&2
        cd "$PPWD" || echo "in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
        return 1
    fi

    #?------------ END BODY source_boot_stl_fn ------------

    cd "$PPWD" || echo "in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
    return 0

}
