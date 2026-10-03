#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: if \$1 is absolut path return 0 else return 1
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

local arg1="$1"

if [[ -z "${arg1}" ]]; then
    l_00_echo_ret1 "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : \$1 NOT_DEFINE : return 1"
    return 1
fi
if [[ "/" == "${arg1:0:1}" ]]; then
    return 0
else
    return 1
fi
