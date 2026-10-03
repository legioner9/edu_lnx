#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: exec all fl in ${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst
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

local tst_dir=${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst
local exec_tst_fl_pth=
for exec_tst_fl_pth in $(find ${tst_dir} -name exec.tst); do
    l_00_echo_info "${exec_tst_fl_pth} = file://${exec_tst_fl_pth}"
done
