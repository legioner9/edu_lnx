#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}

echo -e "${CYAN}--- _ord_name_prc_ram_rnd7_4418112() $* in file://${REPO_PATH}/stl/.d/.stl.lib.d/lib.0stl.arb/_ord_name_prc_ram.sh ---${NORMAL}" #started functions

_ord_name_prc_ram_rnd7_44181123() {

    # HST :: gig command :: [ufl_stl0 1 1 _ord_name_prc_ram.sh in file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh] in file://${REPO_PATH}/stl/.d/.stl.lib.d/lib.0stl.arb/_ord.prc

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD

    local path_file="${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst/l_02_arb_tst/tst_dir/001_lib.stl_00.arb/_ord_name_prc_ram.sh"
    local path_dir="$(dirname "$path_file")"

    # echo -e "${CYAN}--- $FNN() $* in file://${path_file}---${NORMAL}" #started functions

    cd ${path_dir} || {
        # hint="\$1: \$2: "
        l_00_echo_ret1 "in fs= file://$path_file , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${path_dir}' : ${hint} : return 1"
        return 1
    }

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: cr \${1}_0st.ram from _PRC.ram
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

    #{{body_fn}}

    [ -n "$1" ] || {
        l_00_echo_ret1 "in fs= file://$path_file , line=${LINENO}, ${FNN}() : \$1 NOT_DEFINE : ${hint} : return 1"
        return 1
    }

    #! get lib_name from args
    local lib_name="stl_00"
    local pre_lib="001_lib"
    local lib_name_dir_arb=${pre_lib}.${lib_name}.arb

    read -p "DO? : cr ${lib_name}_${1}.ram in ${path_dir} : ETR continue or ^C "

    cd ${STL_LIB_D_PATH}/${lib_name_dir_arb} || return 1

    _sd2d _PRC ${lib_name}_${1} ${STL_LIB_D_PATH}/${lib_name_dir_arb}/_PRC.ram || {
        l_00_echo_ret1 "in fs= file://$path_file , line=${LINENO}, ${FNN}() : FAIL_EXEC '_sd2d _PRC ${lib_name}_${1} ${STL_LIB_D_PATH}/${lib_name_dir_arb}/_PRC.ram' : ${hint} : return 1"
        return 1
    }

    cd ${STL_LIB_D_PATH}/${lib_name_dir_arb} || return 1

    # _sd2d "{{lib_name_dir_arb}}" ${lib_name_dir_arb} ${STL_LIB_D_PATH}/${lib_name_dir_arb}/${lib_name}_${1}.ram || {
    #     l_00_echo_ret1 "in fs= file://$path_file , line=${LINENO}, ${FNN}() : FAIL_EXEC '_s2d {{lib_name_dir_arb}} ${lib_name_dir_arb} ${STL_LIB_D_PATH}/${lib_name_dir_arb}/${lib_name}_${1}.ram' : ${hint} : return 1"
    #     return 1
    # }

    cd ${STL_DATA_D_PATH}/${lib_name_dir_arb} || return 1

    pwd
    read -p "_sd2d _PRC ${1}_0stl ${STL_DATA_D_PATH}/${lib_name_dir_arb}/_PRC.ram"

    _sd2d _PRC ${lib_name}_${1} ${STL_DATA_D_PATH}/${lib_name_dir_arb}/_PRC.ram || {
        l_00_echo_ret1 "in fs= file://$path_file , line=${LINENO}, ${FNN}() : FAIL_EXEC '_sd2d _PRC ${lib_name}_${1} ${STL_DATA_D_PATH}/${lib_name_dir_arb}/_PRC.ram' : ${hint} : return 1"
        return 1
    }

    cd ${STL_DATA_D_PATH}/${lib_name_dir_arb} || return 1

    # _sd2d "{{lib_name_dir_arb}}" ${lib_name_dir_arb} ${STL_DATA_D_PATH}/${lib_name_dir_arb}/${lib_name}_${1}.ram || {
    #     l_00_echo_ret1 "in fs= file://$path_file , line=${LINENO}, ${FNN}() : FAIL_EXEC '_s2d {{lib_name_dir_arb}} ${lib_name_dir_arb} ${STL_DATA_D_PATH}/${lib_name_dir_arb}/${lib_name}_${1}.ram' : ${hint} : return 1"
    #     return 1
    # }

    #! END BODY FN ---------------------------------------

    cd $PPWD
    return 0

}

_ord_name_prc_ram_rnd7_44181123 "$@"
