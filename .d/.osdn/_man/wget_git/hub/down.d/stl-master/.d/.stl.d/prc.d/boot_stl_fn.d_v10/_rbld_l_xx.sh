#!/bin/bash

echo -e "${CYAN}--- _rbld_l_xx_rnd7_57530e2() $* in file://${REPO_PATH}/stl/.d/.stl.d/prc.d/boot_stl_fn.d/_rbld_l_xx.sh ---${NORMAL}" #started functions

_rbld_l_xx_rnd7_57530e2() {

    # HST :: gig command :: [ufl_stl0 1 1 _rbld_l_xx.sh in file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh] in file://${REPO_PATH}/stl/.d/.stl.d/prc.d/boot_stl_fn.d

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD

    local path_file="${REPO_PATH}/stl/.d/.stl.d/prc.d/boot_stl_fn.d/_rbld_l_xx.sh"
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
RETURN: ( result>stdout, return 0 | data | change to ptr | fs_structure | ...)
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

    local fn_dir=${STL_D_PATH}/prc.d/boot_stl_fn.d

    [[ -n "$1" ]] || {
        l_00_echo_ret1 "\$1 EMPTY {fn_name like 'l_04_eee'} :: return 1"
        return 1
    }

    local fn_name="$1"

    cd ${fn_dir} || return 1

    [[ -f "${fn_dir}/${fn_name}.sh" ]] || {
        l_00_echo_ret1 "NOT_FILE :: ${fn_dir}/${fn_name}.sh return 1"

        return 1
    }

    _is_yes "rbld ${fn_name} in ${fn_dir}?" && {

        if ! cat ${fn_dir}/${fn_name}.sh | grep {{fn_body}}; then

            l_00_echo_err "allready rebuilded ${fn_dir}/${fn_name}.sh"
            if _is_yes "bcp ${fn_dir}/${fn_name}.sh ?"; then
                cp --backup=t ${fn_dir}/${fn_name}.sh ${fn_dir}/__bcp_fn || return 1
                rm ${fn_dir}/${fn_name}.sh
                . _ord_file_with_l_xx.sh ${fn_name}
            else
                return 1
            fi
        fi

        _f2f ${fn_dir}/__prc/${fn_name}.prc {{fn_body}} ${fn_dir}/${fn_name}.sh || {
            l_00_echo_ret1 "in fs= file://$path_file , line=${LINENO}, ${FNN}() : FAIL_EXEC '_f2f ${fn_dir}/__prc/${fn_name}.prc {{fn_body}} ${fn_dir}/${fn_name}.sh' : ${hint} : return 1"
            return 1
        }
        _s2f "{{fn_body}}" "[[fn_body]]" ${fn_dir}/${fn_name}.sh || {
            l_00_echo_ret1 "in fs= file://$path_file , line=${LINENO}, ${FNN}() : FAIL_EXEC '_f2f ${fn_dir}/__prc/_${fn_name}.prc {{fn_body}} ${fn_dir}/${fn_name}.sh' : ${hint} : return 1"
            return 1
        }

    }

    l_01_stl_init

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    cd $PPWD
    return 0

}

_rbld_l_xx_rnd7_57530e2 "$@"
