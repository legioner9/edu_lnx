#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

abs_path_boot_stl_fn() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#

    local fn_sh_file=${STL_D_PATH}/prc.d/boot_stl_fn.d/abs_path_boot_stl_fn.sh
    local d_name=$(dirname ${fn_sh_file})

    if [ -n "$1" ] && [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: 
TAGS:
ARGS: [\$1] 
CNTL: 
    _go         : edit_boot_stl_fn() body        : edit_boot_stl_fn file://${d_name}/${FNN}.sh       
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( if ... return 0 | if ... return 1 )
EXAM:
    ${FNN} 
${NORMAL}"
        return 0
    fi

    if [ -n "$1" ] && [ "_go" == "$1" ]; then
        edit_boot_stl_fn file://${d_name}/${FNN}.sh
        return 0
    fi

    if [[ -z "$2" ]]; then
        echo "_abs_path() : \$2 NOT_DEFINE , hint : '$3' : return 1" 1>&2
        return 1
    fi
    local dpwd="$1"
    if ! _is_root "${dpwd}"; then
        echo "_abs_path() : '${dpwd}' NOT_ROOT , hint : '$3' : return 1" 1>&2
        return 1
    fi
    eval local arg2=\${$2}
    if [ "@" == "$arg2" ]; then
        echo ${dpwd}
        return 0
    fi
    if [[ -z "$arg2" ]]; then
        echo "_abs_path() : \$\$2 => '\$$2' NOT_DEFINE , hint : '$3' : return 1" 1>&2
        return 1
    fi
    if _is_root "${arg2}"; then
        echo ${arg2}
    else
        echo ${dpwd}/${arg2}
    fi
    
    cd "$PPWD" ||
    return 0

}
