#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d
# "'$FNN() $*' in file://${file_name} :: CAUS_NAME 'code' :: return 1" >&2

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

echo -e "${CYAN}--- _ord_tst_dir_for_l_xx_rnd7_9caabeb() $* in file://${REPO_PATH}/stl/.d/.stl.d/prc.d/boot_stl_fn.d/__tst/_ord_tst_dir_for_l_xx.sh ---${NORMAL}" #started functions

_ord_tst_dir_for_l_xx_rnd7_9caabeb() {

    # HST :: gig command :: [ufl_stl0 1 1 _ord_tst_dir_for_l_xx.sh in file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh] in file://${REPO_PATH}/stl/.d/.stl.d/prc.d/boot_stl_fn.d/__tst

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD

    local path_file="${REPO_PATH}/stl/.d/.stl.d/prc.d/boot_stl_fn.d/__tst/_ord_tst_dir_for_l_xx.sh"
    local path_dir="$(dirname "$path_file")"

    # echo -e "${CYAN}--- $FNN() $* in file://${path_file}---${NORMAL}" #started functions

    cd ${path_dir} || {
        # hint="\$1: \$2: "
        _st_exit "in fs= file://$path_file , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${path_dir}' : ${hint} : return 1"
        return 1
    }

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: 
TAGS: @
ARGS: \$1
EXAM: 
EXEC: 
CNTL: 
    _go  : _edit ${path_file}
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( return 1 | ... )
    ${FNN} 
${NORMAL}"
    fi

    if [[ "_go" == "$1" ]]; then
        _edit "${path_file}"

        cd $PPWD
        return 0
    fi

    # local api_dr=
    #{{api_arg}}

    #* check _isn_from
    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${path_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     cd $PPWD
    #     return 1
    # fi

    #* path -> u@path
    #! ptr_path
    # local ptr_path_1="$1"
    # ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    #* check arg from arg_arr
    # [[ "${arg_arr[*]}" == *$arg* ]]

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* define local variables

    #! START BODY FN ---------------------------------------

    echo "START BODY FN : ${FNN}() $*"

    [[ -n "$1" ]] || {
        l_00_echo_ret1 "\$1 EMPTY {fn_name like 'l_04_eee'} :: return 1"
        return 1
    }

    local tst_dir=${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst

    local fn_name="$1"

    local rnd=$(_rnd2e)

    cd ${tst_dir} || return 1

    _is_yes "ord ${fn_name} in ${tst_dir}?" && {

        echo "_sd2d _XXX ${fn_name} file://${tst_dir}/_XXX"
        _sd2d _XXX ${fn_name} ${tst_dir}/_XXX || {
            l_00_echo_ret1 "in fs= file://$path_file , line=${LINENO}, ${FNN}() : FAIL_EXEC '_sd2d XXX ${fn_name} ${tst_dir}/_XXX' : ${hint} : return 1"
            return 1
        }
        echo "_sd2d RND ${rnd:0:7} file://${tst_dir}/${fn_name}"
        _s2ad RND ${rnd:0:7} ${tst_dir}/${fn_name} || {
            l_00_echo_ret1 "in fs= file://$path_file , line=${LINENO}, ${FNN}() : FAIL_EXEC '_sd2d XXX ${fn_name} ${tst_dir}/_XXX' : ${hint} : return 1"
            return 1
        }
    }
    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    cd $PPWD
    return 0

}

_ord_tst_dir_for_l_xx_rnd7_9caabeb "$@"
