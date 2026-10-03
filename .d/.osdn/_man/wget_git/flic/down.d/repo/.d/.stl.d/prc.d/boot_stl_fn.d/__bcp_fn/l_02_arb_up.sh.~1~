#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

l_02_arb_up() { # \$1 dir with executable arb

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
        echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: \$1='$1' is not dir" >&2
        return 1
    fi

    local dir=
    local item=$@

    for item in *; do
        # echo "\$item=$item"
        # lib.0stl.arb/_XXX_YYY.ram/.grot/_XXX_YYY.sh
        item_path=$dir/$item
        item_name="${item%.*}"
        item_ext="${item##*.}"
        file_path=${item_path}/.grot/${item_name}.sh

        # echo "\$file_path= file://$file_path"

        if [ -f "$file_path" ] && [ "${item_name:0:1}" != "_" ] && [ "${item##*.}" == "ram" ]; then
            # echo ". $file_path"
            echo -e "${GREEN}\$file_path = '$file_path'${NORMAL}"
            . "$file_path" || {
                l_00_echo_ret1 "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: EXEC_FAIL '. file://$file_path' :: return 1" >&2
                cd "$PPWD" || l_00_echo_ret1 "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
                return 1
            }
        fi
    done

    cd "$PPWD" || l_00_echo_ret1 "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
    return 0
}
