#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

l_02_arb_tst() { # \$1 dir with testable arb

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

    l_00_echo_exec "${FNN}() $*"

    #! IFS to default value
    unset IFS

    if [[ -d "$1" ]]; then
        cd "$1" || {
            l_00_echo_ret1 "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: FAIL_EXEC :: 'cd $1' :: return 1" >&2
            return 1
        }
    else
        l_00_echo_ret1 "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: \$1='$1' is not dir" >&2
        return 1
    fi

    local dir=
    local item=
    local item_path=
    local err_flag=0

    dir=$(pwd)

    for item in *; do
        # echo "\$item=$item"
        [[ "_" == ${item:0:1} ]] && continue
        # /lib.0stl.arb/_XXX_YYY.ram/.grot/_tst/_exec.tst
        item_path=$dir/$item
        item_name="${item%.*}"
        item_ext="${item##*.}"
        file_path=${item_path}/.grot/_tst/exec.tst

        echo -e "${FG}\$file_path= file://$file_path${NRM}"

        if [ -f "$file_path" ]; then
            # echo ". $file_path"
            . "$file_path" || {
                l_00_echo_err "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: EXEC_FAIL '. file://$file_path' :: err_flag=1" >&2
                cd "$PPWD" || l_00_echo_err "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
                err_flag=1
            }
        fi
    done

    if [[ 1 -eq ${err_flag} ]]; then
        l_00_echo_ret1 "in lib_dir= file://$1 FAIL_TST" >&2
        cd "$PPWD" || l_00_echo_err "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
        return 1
    else
        l_00_echo_info "in lib_dir= file://$1 TRUE_TST"
        cd "$PPWD" || l_00_echo_err "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
        return 0
    fi

}
