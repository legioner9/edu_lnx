#!/bin/bash

echo -e "${CYAN}--- _stl.puml.cntx.d._d5d_rnd7_956ceae() $* in file://${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/_stl.puml.cntx.d._d5d.sh ---${NORMAL}" #started functions

_stl.puml.cntx.d._d5d_rnd7_956ceae() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/_stl.puml.cntx.d._d5d.sh"
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

    #{{body_fn}}


    #! ЭТО скрипт повторного запуска _d5d из директории ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/_stl.puml.cntx.d._d5d - возможность ее коррекции
    #! перед повтором есть суть отладки 

    #! создание резервной копии ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/_stl.puml.cntx.d._d5d
    rm -r ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/_stl.puml.cntx.d._d5d~
    cp -r ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/_stl.puml.cntx.d._d5d ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/_stl.puml.cntx.d._d5d~
    
    #! восстановление ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/stl.puml.cntx.d из ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/_stl.puml.cntx.d._d5d
    rm -r ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/stl.puml.cntx.d 
    cp -r ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/_stl.puml.cntx.d._d5d ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/stl.puml.cntx.d 

    #! повтор отображения _d5d с теми же параметрами
    _d5d "${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/stl.puml.issu.d" '@' '&' "${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/stl.puml.cntx.d"

    #! анализ отображения 
    tree ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/stl.puml.issu.d
    tree ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/_stl.puml.cntx.d._d5d
    tree ${HOME}/.stl.d/stl.boot.d/stl.boot.flumen.d/stl.puml.cntx.d
    


    #! END BODY FN ---------------------------------------
    
    cd $PPWD
    return 0

}

_stl.puml.cntx.d._d5d_rnd7_956ceae "$@"
