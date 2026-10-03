#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_01_prs_f() {
    #* START init block ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dir}/__prc
    local tst_dr=${fn_dir}/__tst

    local fn_nm=${fn_dir}/${FNN}.sh
    local prc_nm=${prc_dr}/_${FNN}.prc
    local tst_nm_dr=${tst_dr}/_${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh


    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${file_name}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #* END init block ------------------

    #* START fn block ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: 
TAGS:
\$1 
[, \$2]
CNTL: 
    -h : help
    _go : edit body      : l_02_edit ${fn_nm}
    ${FNN}
"
    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
fi

# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

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

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0

}
