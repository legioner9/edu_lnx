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

    _flow       : tst _flow     : . ${tst_nm_dr}/${FNN}/_flow_tst.sh
    _flow_1     : tst _flow_1   : . ${tst_nm_dr}/${FNN}/_flow_tst_v1.sh
    
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
