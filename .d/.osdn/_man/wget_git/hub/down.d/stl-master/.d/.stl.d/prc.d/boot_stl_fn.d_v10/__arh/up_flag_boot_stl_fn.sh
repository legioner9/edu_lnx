#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

up_flag_boot_stl_fn() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#

    echo -e "${CYAN}--- $FNN() $* ---${NORMAL}"

    local fn_sh_file=${STL_D_PATH}/prc.d/boot_stl_fn.d/up_flag_boot_stl_fn.sh
    local d_name
    d_name=$(dirname "${fn_sh_file}")

    if [ -n "$1" ] && [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: from file_flag \$1 to variable with name_var_flag \$2 
TAGS: @flag
ARGS: \$1 file with flag
      \$2 name variable for value of flag
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

    #?------------ START BODY up_flag_boot_stl_fn ------------

    #{{body_fn}}

    local file_flag="$1"
    local name_var_flag="$2"

    if [ -f ${file_flag} ]; then

        eval "is_stl_log=$\${name_var_flag}"
        var_flag=$(cat ${file_flag})

        [ -z "${var_flag}" ] && {
            echo " file://${file_flag} EXIST bat EMPTY :: return 1" >&2
            cd "$PPWD" || echo "in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
            return 1
        }

        [ 0 -ne ${var_flag} ] && [ 1 -ne ${var_flag} ] && {
            echo " file://${file_flag} EXIST bat NOT_CONTANE '1' or '0' :: return 1" >&2
            cd "$PPWD" || echo "in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
            return 1
        }

        eval "${name_var_flag}=${var_flag}"

    else

        warn_boot_stl_fn "echo 0 >${file_flag}"
        echo 0 >"${file_flag}"
        echo "${name_var_flag}=0"

    fi

    #?------------ END BODY up_flag_boot_stl_fn ------------

    cd "$PPWD" || echo "in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
    return 0

}
