#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

l_01_prs_f() {

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

    # l_00_echo_exec "${FNN}() $*"

    local path=
    local name_ext=
    local name_ext2=
    local name2_ext=

    if [ "$1" = "-h" ]; then
        path="/the/path/_foo.ext2.txt"
        echo -e "${BLUE}------------------------ 
MAIN: ${FUNCNAME} ::
TAGS:
path=/the/path/_foo.txt        
\$(l_01_prs_f -d $path)   : $(l_01_prs_f -d $path) 
\$(l_01_prs_f -ne $path)  : $(l_01_prs_f -ne $path)   
\$(l_01_prs_f -n $path)   : $(l_01_prs_f -n $path)   
\$(l_01_prs_f -n2 $path)  : $(l_01_prs_f -n2 $path)   
\$(l_01_prs_f -e $path)   : $(l_01_prs_f -e $path)   
\$(l_01_prs_f -e2 $path)  : $(l_01_prs_f -e2 $path) 
\$(l_01_prs_f -pr $path)  : $(l_01_prs_f -pr $path)   
\$(l_01_prs_f -po $path)  : $(l_01_prs_f -po $path)    
----------------------${NORMAL}"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    else
        if [ $# -ne 2 ]; then
            l_00_echo_ret1 "_prs_f() mast be 2 parameters : illegal number of parameters : return 1"
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
                                        l_00_echo_ret1 "$1: parameter mastby: -d -ne -n -n2 -e -e2 -pr -po : return 1"
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

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    
    return 0
}
