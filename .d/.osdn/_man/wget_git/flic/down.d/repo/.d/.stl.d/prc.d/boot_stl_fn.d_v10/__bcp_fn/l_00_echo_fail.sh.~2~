#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_echo_fail() {
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
MAIN: ${FNN} :: stderr \$1 like fail tst
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

echo -e "$FML$ERH$RVC$*$NRM"

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0

}
