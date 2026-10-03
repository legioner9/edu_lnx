#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

edit_boot_stl_fn() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#

    echo -e "${CYAN}--- $FNN() $* ---${NORMAL}"

    local fn_sh_file=${STL_D_PATH}/prc.d/boot_stl_fn.d/edit_boot_stl_fn.sh
    local d_name
    d_name=$(dirname "${fn_sh_file}")

    if [ -n "$1" ] && [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: edit file \$1
TAGS:
ARGS: \$1 : edit file
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
        codium "${d_name}"
        cd "$PPWD" || echo "in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
        return 0
    fi

    #?------------ START BODY edit_boot_stl_fn ------------

    #{{body_fn}}

    if [[ -n "$1" ]]; then
        echo -e "${ULINE}THIS_ARG1=$1${NORMAL}"
        ptr_path="$1"
    else
        echo -e "${ULINE}THIS_ARG1=$PPWD${NORMAL}"
        ptr_path="$PPWD"

    fi

    ptr_path=$(abs_path_boot_stl_fn $PPWD "ptr_path")

    [ -e $ptr_path ] || {
        err_boot_stl_fn "in fs= file:///${HOME}/.../stl/.d/.stl.d/prc.d/boot_stl_fn.d/edit_boot_stl_fn.sh , line=${LINENO}, EXEC: edit_boot_stl_fn $@ : NOT_ENTETY : 'file://$ptr_path' : return 1"
        cd $PPWD
        return 1
    }
    if type "codium"; then
        echo -e "${ULINE} codium $ptr_path${NORMAL}"
        codium $2 "$ptr_path"
    else
        if type "code"; then
            echo -e "${ULINE} code $ptr_path${NORMAL}"
            code $2 "$ptr_path"
        else
            if type "gvim" && type "mate-terminal" && [ -f $ptr_path ]; then
                echo -e "${ULINE}mate-terminal -- sh -c gvim -v +$2 $ptr_path${NORMAL}"
                mate-terminal -- sh -c "gvim -v +$2 $ptr_path"
            else
                if type "mc" && type "mate-terminal" && [ -f $ptr_path ]; then
                    echo -e "${ULINE}mate-terminal -- sh -c mc -e $ptr_path${NORMAL}"
                    mate-terminal -- sh -c "mc -e $ptr_path"
                else
                    if type "mc" && type "mate-terminal" && [ -d $ptr_path ]; then
                        echo -e "${ULINE}mate-terminal -- sh -c mc $ptr_path${NORMAL}"
                        mate-terminal -- sh -c "mc $ptr_path"
                    else
                        if type "vim"; then
                            echo -e "${ULINE}vim $ptr_path${NORMAL}"
                            gvim -v "$ptr_path"
                        else
                            echo "editors: codium, code, gvim, vim, mc not enabled" >&2
                        fi
                    fi
                fi
            fi
        fi
    fi

    #?------------ END BODY edit_boot_stl_fn ------------

    cd "$PPWD" || echo "in fs= file://${fn_sh_file} , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
    return 0

}
