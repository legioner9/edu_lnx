#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} ::  if \$1 is file \`source \$1; return \$?\` else return 1 
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

echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

[ -n "$1" ] || {
    l_00_echo_ret1 "'${FNN} $*' in file://${STL_D_PATH}/prc.d/${FNN} , line=${LINENO} 
expl: \$1 EMPTY
evnt: FAIL_EXEC :: '[ -n \"$1\" ]'
actn: return 1" >&2
    cd "${PWD}" || l_00_echo_ret1 "'${FNN} $*' in file://${STL_D_PATH}/prc.d/${FNN} , line=${LINENO} :: FAIL_EXEC :: 'cd \"${PWD}\"' :: return 1"
    return 1
}

if [ -f "$1" ]; then
    source "$1"
    return $?
else
    l_00_echo_ret1 "'$FNN() $*' in file://${file_name} :: NOT_FILE '$1' :: return 1"
    return 1
fi
