#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

l_02_edit() {

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

    if [[ -n "$1" ]]; then
        l_00_echo_code "THIS_ARG1=$1"
        ptr_path="$1"
    else
        l_00_echo_code "THIS_ARG1=$PPWD"
        ptr_path="$PPWD"

    fi

    ptr_path=$(l_01_abs_path $PPWD "ptr_path")

    [ -e $ptr_path ] || {
        l_00_echo_ret1 "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' :, EXEC: edit_boot_stl_fn $@ : NOT_ENTETY : 'file://$ptr_path' : return 1" >&2
        cd $PPWD
        return 1
    }
    if type "codium" 2>/dev/null; then
        l_00_echo_code "codium $ptr_path"
        codium $2 "$ptr_path"
    else
        if type "code" 2>/dev/null; then
            l_00_echo_code "code $ptr_path${NORMAL}"
            code $2 "$ptr_path"
        else
            if type "gvim" 2>/dev/null && type "mate-terminal" 2>/dev/null && [ -f $ptr_path ]; then
                l_00_echo_code "mate-terminal -- sh -c gvim -v +$2 $ptr_path${NORMAL}"
                mate-terminal -- sh -c "gvim -v +$2 $ptr_path"
            else
                if type "mc" 2>/dev/null && type "mate-terminal" 2>/dev/null && [ -f $ptr_path ]; then
                    l_00_echo_code "mate-terminal -- sh -c mc -e $ptr_path${NORMAL}"
                    mate-terminal -- sh -c "mc -e $ptr_path"
                else
                    if type "mc" 2>/dev/null && type "mate-terminal" 2>/dev/null && [ -d $ptr_path ]; then
                        l_00_echo_code "mate-terminal -- sh -c mc $ptr_path${NORMAL}"
                        mate-terminal -- sh -c "mc $ptr_path"
                    else
                        if type "vim" 2>/dev/null; then
                            l_00_echo_code "vim $ptr_path${NORMAL}"
                            vim "$ptr_path"
                        else
                            l_00_echo_err "editors: codium, code, gvim, vim, mc not enabled" >&2
                        fi
                    fi
                fi
            fi
        fi
    fi
}
