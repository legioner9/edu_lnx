#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: \$1 arb_dr for exec fn.sh (err_flag)
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
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_02_arb_up

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

#! ptr_path
local ptr_path="$1"
ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

unset IFS

if [[ -d "$ptr_path" ]]; then
    cd "$ptr_path" || {
        l_00_echo_ret1 "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: FAIL_EXEC :: 'cd $ptr_path' :: return 1" >&2
        return 1
    }
else
    echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: \$ptr_path='$ptr_path' is not dir" >&2
    return 1
fi

local dir=
local item=
local ret1=0

for item in $(ls "$ptr_path"); do
    # echo "\$item=$item"
    # lib.0stl.arb/_XXX_YYY.ram/.grot/_XXX_YYY.sh
    item_path=$ptr_path/$item
    item_name="${item%.*}"
    item_ext="${item##*.}"
    file_path=${item_path}/.grot/${item_name}.sh

    # echo "\$file_path= file://$file_path"

    if [ -f "$file_path" ] && [ "${item:0:1}" != "_" ] && [ "${item##*.}" == "ram" ]; then
        # echo ". $file_path"
        l_00_echo_info "${file_path} in TST"
        . "$file_path" || {
            l_00_echo_err "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: EXEC_FAIL '. file://$file_path' :: ret1=1"
            ret1=1
        }
    fi
done

[[ 0 -eq ${ret1} ]] || {

    echo -e "${ECHO_FAIL}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: in $ptr_path 'ANY_FAIL' return 1${NRM}" >&2
    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 1

}
