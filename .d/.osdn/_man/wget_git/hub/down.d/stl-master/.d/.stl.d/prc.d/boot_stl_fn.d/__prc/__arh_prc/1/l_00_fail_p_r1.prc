#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stderr \$1 like ret1 and wait ETR or ^C
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

echo -e "${ECHO_RET1}$*${NRM}
${ECHO_ERR}ETR - continue with 'return 1', ^C - exit shell process${NRM}" >&2
read -r
