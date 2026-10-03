#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: arb prc up to mem
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh $1
    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_04_arb_prc_up

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

unset IFS

if [[ -d "$1" ]]; then
    cd "$1" || {
        l_00_echo_err "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: FAIL_EXEC :: 'cd $1' :: return 1"
        return 1
    }
else
    l_00_echo_err "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: \$1='$1' is not dir"
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

        local name_function=$(l_01_prs_f -n "$file_path")

        echo -e "${GREEN}\$name_function = '$name_function'${NORMAL}"

        # type dotstldrc_wrap_prc_inner

        l_00_echo_code "alias ${name_function}=\"l_03_wrap_prc $file_path ${ARGS[@]:1}\""

        eval "alias ${name_function}=\"l_03_wrap_prc $file_path ${ARGS[@]:1}\""

        # eval "export ${name_function}"

        eval "type ${name_function}"
    fi
done
