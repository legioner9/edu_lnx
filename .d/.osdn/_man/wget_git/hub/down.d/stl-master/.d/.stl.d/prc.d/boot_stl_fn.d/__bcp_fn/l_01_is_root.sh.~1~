#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

l_01_is_root() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local file_name=${STL_D_PATH}/prc.d/boot_stl_fn.d/${FNN}.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_e" == "$1" ]]; then
        vim ${file_name}
        return 0
    fi

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: if \$1 is absolut path return 0 else return 1
TAGS:
\$1 
[, \$2]
CNTL: 
    -h : help
    _e : _edit body      : vim ${sh_file}
EXAM: 
    ${FNN}
"
        return 0
    fi

    # l_00_echo_exec "${FNN}() $*"

    local arg1="$1"

    if [[ -z "${arg1}" ]]; then
        l_00_echo_ret1 "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : \$1 NOT_DEFINE : return 1"
        return 1
    fi
    if [[ "/" == "${arg1:0:1}" ]]; then
        return 0
    else
        return 1
    fi
}
