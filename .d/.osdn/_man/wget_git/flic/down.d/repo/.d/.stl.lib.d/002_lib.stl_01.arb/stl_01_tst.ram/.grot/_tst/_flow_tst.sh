#!/usr/bin/env bash

__stl_01_tst_FLOW() {

    if ! command -v stl_01_tst >/dev/null; then
        echo "TYPE_ERROR : stl_01_tst" >&2
        return 1
    fi

    # local filename=${STL_LIB_D_PATH}/{{lib_name_dir_arb}}.arb/stl_01_tst.ram/.grot/_tst/_flow_tst.sh
    local filename=${STL_LIB_D_PATH}/002_lib.stl_01.arb/stl_01_tst.ram/.grot/_tst/_flow_tst.sh

    local PW=$(pwd)
    local idir="$(dirname ${filename})"

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    cd "${idir}" || {
        echo "${idir} not dir" >&2
        return 1
    }

    #?----------------------------------------------------
    #?-------------------------------------
    # echo "start file://$filename"
    # : >res

    # cd _dir_tst || {
    #     hint="\$1: \$2: "
    #     _st_exit "in fs= file://${filename} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${idir}/_dir_tst' : ${hint} : return 1"
    #     return 1
    # }

    #?-------------------------------------
    #?----------------------------------------------------

    cd "${PW}" || {
        echo "${PW} not dir" >&2
        return 1
    }

}

__stl_01_tst_FLOW "$@"
