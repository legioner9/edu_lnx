#!/bin/bash

echo -e "${CYAN}--- _rm_npfx_prc_name_rnd7_df091f0() $* in file://${REPO_PATH}/stl/.d/.stl.d/prc.d/boot_stl_fn.d_v5/__prc/_rm_npfx_prc_name.sh ---${NORMAL}" #started functions

_rm_npfx_prc_name_rnd7_df091f0() {

    # HST :: gig command :: [ufl_stl0 1 1 _rm_npfx_prc_name.sh in file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh] in file://${REPO_PATH}/stl/.d/.stl.d/prc.d/boot_stl_fn.d_v5/__prc

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD

    local path_file="${REPO_PATH}/stl/.d/.stl.d/prc.d/boot_stl_fn.d_v5/__prc/_rm_npfx_prc_name.sh"
    local path_dir="$(dirname "$path_file")"

    # echo -e "${CYAN}--- $FNN() $* in file://${path_file}---${NORMAL}" #started functions

    # cd ${path_dir} || {
    #     # hint="\$1: \$2: "
    #     _st_exit "in fs= file://$path_file , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${path_dir}' : ${hint} : return 1"
    #     return 1
    # }

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

    local item=
    local prc_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d_v5/__tst

    for item in $(ls ${prc_dr}); do
        echo "${item:0:3}"
        [[ "_l_" == "${item:0:3}" ]] && {
            # echo -e "${GREEN}\${item:1} = '${item:1}'${NORMAL}"
            mv ${prc_dr}/${item} ${prc_dr}/${item:1}

        }

    done

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    cd $PPWD
    return 0

}

_rm_npfx_prc_name_rnd7_df091f0 "$@"
