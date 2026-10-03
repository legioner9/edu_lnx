#!/bin/bash

echo -e "${CYAN}--- man_from_o2md_rnd7_08eff4f() $* in file://${ST_RC_D_PATH}/.d/.mul/rbld_readme.mul/.prc/.sh/man_from_o2md.sh---${NORMAL}" #started functions

man_from_o2md_rnd7_08eff4f() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${ST_RC_D_PATH}/.d/.mul/rbld_readme.mul/.prc/.sh/man_from_o2md.sh"
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
        return 0
    fi

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} less more "in fs= file://${path_file} , line=${LINENO}, ${FNN}() : ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    # local _ARGS_=("$@")
    # _parr3e _ARGS_

    #{{ptr_path}}

    #! START BODY FN ---------------------------------------

    echo "START BODY FN : ${FNN}() $*"

    cd /home/st/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt

    local item=

    for item in $(find . -name "*.man"); do

        item2=$(_prs_f -d ${item})/$(_prs_f -n ${item}).md

        echo -e "${GREEN}\$item2 = $item2${NORMAL}" #print variable

        mv ${item} ${item2}

    done

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    return 0

}

man_from_o2md_rnd7_08eff4f "$@"
