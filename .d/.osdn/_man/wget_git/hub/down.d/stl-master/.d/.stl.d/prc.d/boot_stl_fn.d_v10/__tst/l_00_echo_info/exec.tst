#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

_l_00_echo_info_e1d1e32_exec() {

    local PW=$(pwd)

    if ! command -v l_00_echo_info >/dev/null; then
        echo "TYPE_ERROR : l_00_echo_info" >&2
        return 1
    fi

    local filename=${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/l_00_echo_info/exec.tst
    local idir="$(dirname ${filename})"

    l_00_echo_info "test function l_00_echo_info in file://${filename}"

    # cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

    cd "${idir}" || {
        l_00_echo_ret1 "${idir} not dir"
        return 1
    }

    . "$idir"/_flow_tst.sh &>/dev/null

    # . "$dir"/_flow_tst.sh &>res

    #? if res, pre dirs -> diff -qr | diff -r

    local flag=1
    if ! diff -q "$idir"/pre "$idir"/res >/dev/null; then
        flag=0
    fi

    if [ 0 -eq "$flag" ]; then
        l_00_echo_fail "in file://$filename FAIL"
        l_00_echo_code "diff file://$idir/pre file://$idir/res"
        diff "$idir"/pre "$idir"/res >&2

        cd "$PW"
        return 1
    else
        l_00_echo_succ "in file://$filename SUCC"

        cd "$PW"
        return 0
    fi

}

if ! _l_00_echo_info_e1d1e32_exec  "$@"; then
    l_00_echo_ret1 "EXEC_FAIL for fuction : 'XXX' : GOTO file://${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/l_00_echo_info : return 1"
    return 1
fi
