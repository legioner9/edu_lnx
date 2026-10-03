#!/usr/bin/env bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

_l_01_prs_f_e6df947_flow() {

    if ! command -v l_01_prs_f >/dev/null; then
        l_00_echo_ret1 "TYPE_ERROR : l_01_prs_f"
        return 1
    fi

    local filename=${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/l_01_prs_f/_flow_tst.sh

    local PW=$(pwd)
    local idir="$(dirname ${filename})"
    local tst_dir=${idir}/tst_dir
    local res=${idir}/res

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    cd "${idir}" || {
        l_00_echo_ret1 "${idir} not dir"
        return 1
    }

    #?----------------------------------------------------
    #?-------------------------------------
    l_00_echo_exec "source file://$filename"
    : >"${res}"

    cd tst_dir || {
        hint="\$1: \$2: "
        l_00_echo_ret1 "in fs= file://${filename} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${idir}/_dir_tst' : ${hint} : return 1"
        return 1
    }

    # l_01_prs_f "${tst_dir}" &>"${res}"

    path=/the/path/_foo.bar.ext.txt
    # $(l_01_prs_f -d /the/path/_foo.txt)   : /the/path
    # $(l_01_prs_f -ne /the/path/_foo.txt)  : _foo.txt
    # $(l_01_prs_f -n /the/path/_foo.txt)   : _foo
    # $(l_01_prs_f -n2 /the/path/_foo.txt)  : _foo
    # $(l_01_prs_f -e /the/path/_foo.txt)   : txt
    # $(l_01_prs_f -e2 /the/path/_foo.txt)  : _foo
    # $(l_01_prs_f -pr /the/path/_foo.txt)  : _
    # $(l_01_prs_f -po /the/path/_foo.txt)  : foo.txt

    l_01_prs_f -d ${path} &>>"${res}"
    l_01_prs_f -ne ${path} &>>"${res}"
    l_01_prs_f -n ${path} &>>"${res}"
    l_01_prs_f -n2 ${path} &>>"${res}"
    l_01_prs_f -e ${path} &>>"${res}"
    l_01_prs_f -e2 ${path} &>>"${res}"
    l_01_prs_f -pr ${path} &>>"${res}"
    l_01_prs_f -po ${path} &>>"${res}"

    #?-------------------------------------
    #?----------------------------------------------------

    cd "${PW}" || {
        l_00_echo_ret1 "${PW} not dir"
        return 1
    }

}

_l_01_prs_f_e6df947_flow "$@"
