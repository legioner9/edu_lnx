#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

l_04_arb_prc_up() { # \$1 dir with executable arb

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#

    local file_name=${STL_D_PATH}/prc.d/boot_stl_fn.d/${FNN}.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_e" == "$1" ]]; then
        l_02_edit ${file_name}
        return 0
    fi

    l_00_echo_exec "${FNN}() $*" "${FNN}() $*"

    #! IFS to default value
    unset IFS

    if [[ -d "$1" ]]; then
        cd "$1" || {
            l_00_echo_err "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: FAIL_EXEC :: 'cd $1' :: return 1"
            return 1
        }
    else
        l_00_echo_err "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: \$1='$1' is not dir"
        return 1
    fi

    local dir=
    local item=
    local item_path=

    dir=$(pwd)

    for item in *; do
        # echo "\$item=$item"
        # lib.0stl.arb/_XXX_YYY.ram/.grot/_XXX_YYY.sh
        item_path=$dir/$item
        item_name="${item%.*}"
        item_ext="${item##*.}"
        file_path=${item_path}/.grot/${item_name}.prc

        # echo "\$file_path= file://$file_path"

        if [ -f "$file_path" ] && [ "${item_name:0:1}" != "_" ] && [ "${item##*.}" == "ram" ]; then
            # echo ". $file_path"
            # dotstldrc_wrap_prc_inner "$file_path" || {
            #     #? . "$file_path" || {
            #     echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: EXEC_FAIL 'dotstldrc_wrap_prc $file_path' :: return 1" >&2
            #     cd "$PPWD" || echo "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
            #     return 1
            # }

            echo -e "${GREEN}\$file_path = '$file_path'${NORMAL}"

            local name_function=$(l_01_prs_f -n "$file_path")

            echo -e "${GREEN}\$name_function = '$name_function'${NORMAL}"

            # type dotstldrc_wrap_prc_inner

            l_00_echo_code "alias ${name_function}=\"l_03_wrap_prc $file_path ${ARGS[@]:1}\""

            eval "alias ${name_function}=\"l_03_wrap_prc $file_path ${ARGS[@]:1}\""

            # eval "export ${name_function}"

            eval "type ${name_function}"
        fi
    done
    cd "$PPWD" || l_00_echo_err "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue"
    return 0
}
