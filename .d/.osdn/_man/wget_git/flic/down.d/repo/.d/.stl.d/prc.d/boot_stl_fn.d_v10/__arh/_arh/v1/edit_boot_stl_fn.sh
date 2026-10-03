#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

edit_boot_stl_fn() {

    local PPWD=$(pwd)
    local ptr_path

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
}
