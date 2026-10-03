#!/bin/bash

echo -e "${CYAN}--- rbld_pml_png_rnd7_5f73a8e() $* in file://${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/.sh/rbld_pml_png.sh ---${NORMAL}" #started functions

rbld_pml_png_rnd7_5f73a8e() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/.sh/rbld_pml_png.sh"
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

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} less more "in fs= file://${path_file} , line=${LINENO}, ${FNN}() : ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    # local _ARGS_=("$@")
    # _parr3e _ARGS_

    #{{ptr_path}}

    #! START BODY FN ---------------------------------------

    echo "START BODY FN : ${FNN}() $*"

    rm ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/stl.tml.puml.png.d/stl.tml.png

    . ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/stl.tml.puml_ufl10

    cp -f ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/stl.tml.puml ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/stl.tml.puml~
    _puml ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/stl.tml.puml

    drawing ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/stl.tml.puml.png.d/stl.tml.png &

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    cd $PPWD
    return 0

}

rbld_pml_png_rnd7_5f73a8e "$@"
