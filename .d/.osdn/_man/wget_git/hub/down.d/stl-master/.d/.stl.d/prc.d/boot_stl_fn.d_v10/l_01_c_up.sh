#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_01_c_up() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_01_c_up`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_01_c_up _e_prc` to edit "fn block", `l_01_c_up _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_01_c_up.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_01_c_up.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: exec (source) recurce in dir \$1 stl_files with ext=.sh
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_01_c_up

RETU: (any {0} | if: [...] {0} | if [...] {1})
EXAM:   ${FNN} [, [, ]]

"
    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
fi

#! stdout fn introduction
echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

#! IFS to default value
unset IFS

if [[ -d "$1" ]]; then
    cd "$1" || {
        # l_00_echo_ret1 "'$FNN() $*' :: FAIL_EXEC :: 'cd $1' :: return 1"
        # cd "$PPWD" || l_00_echo_ret1 "'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue"
        echo -e "${ECHO_RET1}'$FNN() $*' :: FAIL_EXEC :: 'cd $1' :: return 1${NRM}"
        cd "$PPWD" || echo -e "${ECHO_RET1}'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    }
else
    # l_00_echo_ret1 "'$FNN() $*' :: \$1='$1' is not dir"
    # cd "$PPWD" || l_00_echo_ret1 "'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue"
    echo -e "${ECHO_RET1}'$FNN() $*' :: \$1='$1' is not dir${NRM}"
    cd "$PPWD" || echo -e "${ECHO_RET1}'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
fi

local dir=
local item=
local item_path=

local fail_flag=

dir=$(pwd)

for item in *; do

    item_path=$dir/$item

    if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ] && [ "${item##*.}" == "sh" ]; then
        # l_00_echo_code ". file://$item_path"
        echo -e "${ECHO_CODE}. file://$item_path${NRM}"
        . "$item_path" || {
            fail_flag=1
            # l_00_echo_err "'$FNN() $*' :: EXEC_FAIL '. file://$item_path' :: fail_flag=1 :: continue"
            # cd "$PPWD" || l_00_echo_err "'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue"
            echo -e "${ECHO_ERR}'$FNN() $*' :: EXEC_FAIL '. file://$item_path' :: fail_flag=1 :: continue${NRM}"
            cd "$PPWD" || echo -e "${ECHO_ERR}'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        }

    elif [ -d "$item_path" ] && [ "${item:0:1}" != "_" ]; then

        l_01_c_up "$item_path" || {
            fail_flag=1
            # l_00_echo_err "'$FNN() $*' :: EXEC_FAIL 'l_01_c_up file://$item_path' :: fail_flag=1 :: continue"
            # cd "$PPWD" || l_00_echo_err "'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue"
            echo -e "${ECHO_ERR}'$FNN() $*' :: EXEC_FAIL 'l_01_c_up file://$item_path' :: fail_flag=1 :: continue${NRM}"
            cd "$PPWD" || echo -e "${ECHO_ERR}'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        }
    fi

done

if [[ 1 -eq ${fail_flag} ]]; then
    # l_00_echo_ret1 "'$FNN() $*' ANY_FAIL"
    echo -e "${ECHO_RET1}'$FNN() $*' ANY_FAIL${NRM}"
    return 1
else
    # l_00_echo_info "'$FNN() $*' ALL_TRUE"
    echo -e "${ECHO_INFO}'$FNN() $*' ALL_TRUE${NRM}"
fi

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_01_c_up @
