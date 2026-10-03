#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

l1_prs_f() {
    local path=
    local name_ext=
    local name_ext2=
    local name2_ext=
    if [[ "_e" == "$1" ]]; then
        _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_prs_f.sh
        return 0
    fi
    if [[ "_t" == "$1" ]]; then
        _edit ${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/_prs_f.tst.d
        return 0
    fi
    if [ "$1" = "-h" ]; then
        path="/the/path/_foo.ext2.txt"
        echo -e "${BLUE}------------------------ 
MAIN: ${FUNCNAME} ::
TAGS:
path=/the/path/_foo.txt        
\$(_prs_f -d $path)   : $(_prs_f -d $path) 
\$(_prs_f -ne $path)  : $(_prs_f -ne $path)   
\$(_prs_f -n $path)   : $(_prs_f -n $path)   
\$(_prs_f -n2 $path)  : $(_prs_f -n2 $path)   
\$(_prs_f -e $path)   : $(_prs_f -e $path)   
\$(_prs_f -e2 $path)  : $(_prs_f -e2 $path) 
\$(_prs_f -pr $path)  : $(_prs_f -pr $path)   
\$(_prs_f -po $path)  : $(_prs_f -po $path)    
----------------------${NORMAL}"
        return 0
    else
        if [ $# -ne 2 ]; then
            echo "_prs_f() mast be 2 parameters : illegal number of parameters : return 1"
            return 1
        fi
        name_ext="${2##*/}"
        if [ "$1" = "-d" ]; then
            dirname "$2"
        else
            if [ "$1" = "-ne" ]; then
                echo "$name_ext"
            else
                if [ "$1" = "-n" ]; then
                    echo "${name_ext%.*}"
                else
                    if [ "$1" = "-n2" ]; then
                        name2_ext="${name_ext%.*}"
                        echo "${name2_ext%.*}"
                    else
                        if [ "$1" = "-e" ]; then
                            echo "${name_ext##*.}"
                        else
                            if [ "$1" = "-e2" ]; then
                                name_ext2="${name_ext%.*}"
                                echo "${name_ext2##*.}"
                            else
                                if [ "$1" = "-pr" ]; then
                                    echo "${name_ext:0:1}"
                                else
                                    if [ "$1" = "-po" ]; then
                                        echo "${name_ext:1}"
                                    else
                                        _st_exit "$1: parameter mastby: -d -ne -n2 -e -e2 -pr -po : return 1"
                                        return 1
                                    fi
                                fi
                            fi
                        fi
                    fi
                fi
            fi
        fi
    fi
}

l1_c_up() { # \$1 dir with execuable files

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD

    echo "$FNN() $*"

    #! IFS to default value
    unset IFS

    if [[ -d "$1" ]]; then
        cd "$1" || {
            echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc :: FAIL_EXEC :: 'cd $1' :: return 1" >&2
            cd "$PPWD" || echo "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
            return 1
        }
    else
        echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc :: \$1='$1' is not dir" >&2
        cd "$PPWD" || echo "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
        return 1
    fi

    local dir=
    local item=
    local item_path=

    dir=$(pwd)

    for item in *; do

        item_path=$dir/$item

        if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ] && [ "${item##*.}" == "sh" ]; then
            . "$item_path" || {
                echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc :: EXEC_FAIL '. file://$item_path' :: return 1" >&2
                cd "$PPWD" || echo "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
                return 1
            }

        elif [ -d "$item_path" ] && [ "${item:0:1}" != "_" ]; then
            l1_c_up "$item_path" || {
                echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc :: EXEC_FAIL 'dotstldrc_c_up file://$item_path' :: return 1" >&2
                cd "$PPWD" || echo "$FNN() $* in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
                return 1
            }
        fi

    done

    cd "$PPWD" || echo "'$FNN() $* 'in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
    return 0
}

l1_is_root() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD

    local arg1="$1"

    if [[ -z "${arg1}" ]]; then
        echo "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : \$1 NOT_DEFINE : return 1" 1>&2
        return 1
    fi
    if [[ "/" == "${arg1:0:1}" ]]; then
        return 0
    else
        return 1
    fi
}

l1_abs_path() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD

    if [[ -z "$2" ]]; then
        echo "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : \$2 NOT_DEFINE , hint : '$3' : return 1" 1>&2
        return 1
    fi
    local dpwd="$1"
    if ! dotstldrc_is_root "${dpwd}"; then
        echo "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : '${dpwd}' NOT_ROOT , hint : '$3' : return 1" 1>&2
        return 1
    fi
    eval local arg2=\${$2}
    if [ "@" == "$arg2" ]; then
        echo ${dpwd}
        return 0
    fi
    if [[ -z "$arg2" ]]; then
        echo "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : \$\$2 => '\$$2' NOT_DEFINE , hint : '$3' : return 1" 1>&2
        return 1
    fi
    if dotstldrc_is_root "${arg2}"; then
        echo ${arg2}
    else
        echo ${dpwd}/${arg2}
    fi

}

l1_edit() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD

    if [[ -n "$1" ]]; then
        echo -e "${ULINE}THIS_ARG1=$1${NORMAL}"
        ptr_path="$1"
    else
        echo -e "${ULINE}THIS_ARG1=$PPWD${NORMAL}"
        ptr_path="$PPWD"

    fi

    ptr_path=$(l1_abs_path $PPWD "ptr_path")

    [ -e $ptr_path ] || {
        echo "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' :, EXEC: edit_boot_stl_fn $@ : NOT_ENTETY : 'file://$ptr_path' : return 1" >&2
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

l1_arb_up() { # \$1 dir with executable arb

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD

    echo "$FNN() $*"

    #! IFS to default value
    unset IFS

    if [[ -d "$1" ]]; then
        cd "$1" || {
            echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: FAIL_EXEC :: 'cd $1' :: return 1" >&2
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
                echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: EXEC_FAIL '. file://$file_path' :: return 1" >&2
                cd "$PPWD" || echo "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
                return 1
            }
        fi
    done

    cd "$PPWD" || echo "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
    return 0
}

l1_arb_prc_up() { # \$1 dir with executable arb

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#

    echo "$FNN() $*"

    #! IFS to default value
    unset IFS

    if [[ -d "$1" ]]; then
        cd "$1" || {
            echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: FAIL_EXEC :: 'cd $1' :: return 1" >&2
            return 1
        }
    else
        echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: \$1='$1' is not dir" >&2
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

            local name_function=$(dotstldrc_prs_f -n "$file_path")

            echo -e "${GREEN}\$name_function = '$name_function'${NORMAL}"

            # type dotstldrc_wrap_prc_inner

            echo "alias ${name_function}=\"dotstldrc_wrap_prc_inner $file_path ${ARGS[@]:1}\""

            eval "alias ${name_function}=\"dotstldrc_wrap_prc_inner $file_path ${ARGS[@]:1}\""

            # eval "export ${name_function}"

            eval "type ${name_function}"
        fi
    done

    cd "$PPWD" || echo "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
    return 0
}

l1_arb_tst() { # \$1 dir with testable arb

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD

    echo "$FNN() $*"

    #! IFS to default value
    unset IFS

    if [[ -d "$1" ]]; then
        cd "$1" || {
            echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: FAIL_EXEC :: 'cd $1' :: return 1" >&2
            return 1
        }
    else
        echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: \$1='$1' is not dir" >&2
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

        echo "\$file_path= file://$file_path"

        if [ -f "$file_path" ]; then
            # echo ". $file_path"
            . "$file_path" || {
                echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: EXEC_FAIL '. file://$file_path' :: err_flag=1" >&2
                cd "$PPWD" || echo "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
                err_flag=1
            }
        fi
    done

    if [[ 1 -eq ${err_flag} ]]; then
        echo "in lib_dir= file://$1 FAIL_TST" >&2
        cd "$PPWD" || echo "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
        return 1
    else
        echo "in lib_dir= file://$1 TRUE_TST"
        cd "$PPWD" || echo "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
        return 0
    fi

}
