#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

l_01_c_up() { # \$1 dir with execuable files

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
MAIN: ${FNN} :: exec (source) recurce in dir \$1 stl_files with ext=.sh
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

    if type l_00_echo_exec &>/dev/null; then
        l_00_echo_exec "${FNN}() $*"
    else
        echo -e "${FNN}() $*"
    fi

    #! IFS to default value
    unset IFS

    if [[ -d "$1" ]]; then
        cd "$1" || {
            l_00_echo_ret1 "'$FNN() $*' :: FAIL_EXEC :: 'cd $1' :: return 1"
            cd "$PPWD" || l_00_echo_ret1 "'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue"
            return 1
        }
    else
        l_00_echo_ret1 "'$FNN() $*' :: \$1='$1' is not dir"
        cd "$PPWD" || l_00_echo_ret1 "'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue"
        return 1
    fi

    local dir=
    local item=
    local item_path=

    local fail_flag=

    dir=$(pwd)

    for item in *; do

        item_path=$dir/$item

        if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ] && [ "${item##*.}" == "sh" ]; then
            l_00_echo_code ". file://$item_path"
            . "$item_path" || {
                fail_flag=1
                l_00_echo_err "'$FNN() $*' :: EXEC_FAIL '. file://$item_path' :: fail_flag=1 :: continue"
                cd "$PPWD" || l_00_echo_err "'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue"
            }

        elif [ -d "$item_path" ] && [ "${item:0:1}" != "_" ]; then

            l_01_c_up "$item_path" || {
                fail_flag=1
                l_00_echo_err "'$FNN() $*' :: EXEC_FAIL 'l_01_c_up file://$item_path' :: fail_flag=1 :: continue"
                cd "$PPWD" || l_00_echo_err "'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue"
            }
        fi

    done

    if [[ 1 -eq ${fail_flag} ]]; then
        l_00_echo_ret1 "'$FNN() $*' ANY_FAIL"
        return 1
    else
        l_00_echo_info "'$FNN() $*' ALL_TRUE"
    fi

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }

    return 0
}
