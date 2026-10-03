#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: echo abs_path if \$1 PWD \$2 ptr to upath or @ instead empty \$2
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
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_01_abs_path

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

if [[ -z "$2" ]]; then
    l_00_echo_ret1 "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : \$2 NOT_DEFINE , hint : '$3' : return 1"
    return 1
fi
local dpwd="$1"
if ! [[ "/" == "${dpwd:0:1}" ]]; then
    l_00_echo_ret1 "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : '${dpwd}' NOT_ROOT , hint : '$3' : return 1"
    return 1
fi
eval local arg2=\${$2}
if [ "@" == "$arg2" ]; then
    echo ${dpwd}
    return 0
fi
if [[ -z "$arg2" ]]; then
    l_00_echo_ret1 "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : \$\$2 => '\$$2' NOT_DEFINE , hint : '$3' : return 1"
    return 1
fi

# [[ "/" == "${arg1:0:1}" ]]
if [[ "/" == "${arg2:0:1}" ]]; then
    echo ${arg2}
else
    echo ${dpwd}/${arg2}
fi
