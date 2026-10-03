#!/bin/bash

echo -e "${CYAN}--- rbld_readme_rnd7_3d6253b() $* in file://${ST_RC_D_PATH}/.d/.mul/rbld_readme.mul/.prc/rbld_readme.sh---${NORMAL}" #started functions

rbld_readme_rnd7_3d6253b() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${ST_RC_D_PATH}/.d/.mul/rbld_readme.mul/.prc/rbld_readme.sh"
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

    local frm_file=${ST_RC_D_PATH}/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file

    ufl_stl0 7 1 ${frm_file}.local.md

    cp -f ${frm_file}.local.md ${frm_file}.git.md

    _s2f '/REPOBARE/_repo/st_rc_d/' '/' ${frm_file}.git.md

    . README.md_ufl9

    _s2f "${HOME}"/ '/' README.md

    rm ${ST_RC_D_PATH}/README.md

    cp README.md ${ST_RC_D_PATH}/README.md

    _s2f "${HOME}"/REPOBARE/_repo/st_rc_d/ '/' ${ST_RC_D_PATH}/README.md

    _s2f '/REPOBARE/_repo/st_rc_d/' '/' ${ST_RC_D_PATH}/README.md

    # REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.md

    # '[Все функции STL](/REPOBARE/_repo/st_rc_d/' 'd'

    _edit ${ST_RC_D_PATH}/README.md

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    return 0

}

rbld_readme_rnd7_3d6253b "$@"
