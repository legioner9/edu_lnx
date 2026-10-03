#!/bin/bash

echo -e "${CYAN}--- _rbld_res_md_rnd7_d3426cd() $* in file://${REPO_PATH}/stl/.d/.opus/readme.opus/_cntx.ins.d/200.local_repo.d/002.nbash_opus.d/_rbld_res_md.sh ---${NORMAL}" #started functions

_rbld_res_md_rnd7_d3426cd() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${REPO_PATH}/stl/.d/.opus/readme.opus/_cntx.ins.d/200.local_repo.d/002.nbash_opus.d/_rbld_res_md.sh"
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
    local file_opus_in=${path_dir}/_cntx.ins.d/001.002.opus_in.txt.md
    local file_opus_sd=${path_dir}/_cntx.ins.d/001.003.opus_sd.txt.md
    local file_opus_arb=${path_dir}/_cntx.ins.d/001.004.opus_arb.txt.md

    : >${file_opus_in}
    : >${file_opus_sd}
    : >${file_opus_arb}

    local dot_dr=${path_dir}/.d
    local lst_dr=${dot_dr}/.lst
    local in_dr=${path_dir}/.ins_dr

    echo -e "${GREEN}\$in_dr = '$in_dr'${NORMAL}"

    local out_opus_lst_arb=${lst_dr}/out_opus_lst_arb.lst
    local out_opus_lst_sd=${lst_dr}/out_opus_lst_sd.lst

    local opus_sd=
    local opus_sd_pth=
    local opus_sd_pth_sd_pth=

    local anc_to=
    local anc_from=

    #! создаем file_opus_in

    echo "## in_dr" >>${file_opus_in}
    #! in_dr перебор по in_dr_sd_nm

    for in_dr_sd_nm in $(_dd2e ${in_dr}); do
        in_dr_sd_pth=${in_dr}/${in_dr_sd_nm}
        #! создаем подзаголовки из ссылок [nm](pth)

        anc_to=${in_dr_sd_pth}/res.md
        # anc_from=${file_opus_sd}
        #! файл file_opus_sd будет копирован в path_file а значит и относительный путь нужно считать от path_file
        anc_from=${path_file}
        rel_path=$(_ee2rpth ${anc_from} ${anc_to})
        echo "### [${in_dr_sd_nm}](${rel_path})" >>${file_opus_in}

        # echo "### [${in_dr_sd_nm}](${in_dr_sd_pth}/res.md)" >>${file_opus_in}
    done

    #! получаем путь из списка out_opus_lst_sd.lst создаем file_opus_sd
    for opus_sd_pth in $(_f2e ${out_opus_lst_sd}); do

        #! записываем заголовок как название dr
        echo "## $(basename ${opus_sd_pth})" >>${file_opus_sd}

        #! создаем подзаголовки из ссылок [nm](pth),где nm имя sd, pth ее путь
        for opus_sd_pth_sd in $(_dd2e ${opus_sd_pth}); do

            opus_sd_pth_sd_pth=${opus_sd_pth}/${opus_sd_pth_sd}

            anc_to=${opus_sd_pth_sd_pth}/.grot/exam.man
            # anc_from=${file_opus_sd}
            #! файл file_opus_sd будет копирован в path_file а значит и относительный путь нужно считать от path_file
            anc_from=${path_file}
            rel_path=$(_ee2rpth ${anc_from} ${anc_to})
            echo "### [$(_prs_f -n ${opus_sd_pth_sd})](${rel_path})" >>${file_opus_sd}

        done

    done

    #! получаем путь из списка out_opus_lst_arb.lst создаем file_opus_arb
    for opus_arb_pth in $(_f2e ${out_opus_lst_arb}); do

        #! записываем заголовок как название dr
        echo "## $(basename ${opus_arb_pth})" >>${file_opus_arb}

        for opus_arb_pth_nm in $(_d2e ${opus_arb_pth}); do

            opus_arb_pth_pth=${opus_arb_pth}/${opus_arb_pth_nm}
            # echo -e "${GREEN}\$opus_arb_pth_pth = ' file://$opus_arb_pth_pth '${NORMAL}"
            #! создаем подзаголовки из ссылок [nm](pth),где nm имя sd, pth ее путь
            for opus_arb_pth_pth_nm in $(_dd2e ${opus_arb_pth_pth}/.grot/opus.d); do
                echo -e "${GREEN}\$opus_arb_pth_pth_nm = '$opus_arb_pth_pth_nm'${NORMAL}"

                opus_arb_pth_pth_pth=${opus_arb_pth_pth}/.grot/opus.d/${opus_arb_pth_pth_nm}

                # echo -e "${GREEN}\$opus_arb_pth_pth_pth = ' file://$opus_arb_pth_pth_pth '${NORMAL}"

                anc_to=${opus_arb_pth_pth_pth}/_cntx.res.md
                # anc_from=${file_opus_sd}
                #! файл file_opus_sd будет копирован в path_file а значит и относительный путь нужно считать от path_file
                anc_from=${path_file}
                rel_path=$(_ee2rpth ${anc_from} ${anc_to})
                echo "### [$(_prs_f -n $(basename ${opus_arb_pth_nm}))](${rel_path})" >>${file_opus_arb}

                # echo "### [$(_prs_f -n $(basename ${opus_arb_pth_nm})) $(_prs_f -n ${opus_arb_pth_pth_nm})](${opus_arb_pth_pth_pth}/_cntx.res.md)" >>${file_opus_arb}

            done
        done

    done

    #! rbld всех из списка out_opus_lst_arb.lst
    local md_ufl9=
    local opus_d=
    local sd_opus_d=

    for util_d in $(_f2e ${out_opus_lst_arb}); do

        for util_sd in $(_dd2e ${util_d}); do

            opus_d=${util_d}/${util_sd}/.grot/opus.d

            if [ -d ${opus_d} ]; then
                for sd_opus_d in $(_dd2e ${opus_d}); do

                    md_ufl9=${opus_d}/${sd_opus_d}/_cntx.res.md_ufl9
                    md_ufl9_dirname=${opus_d}/${sd_opus_d}

                    if [ -f ${md_ufl9_dirname}/_rbld_res_md.sh ]; then
                        _source_w1_isf ${md_ufl9_dirname}/_rbld_res_md.sh
                    fi

                done
            fi
        done
    done

    #! rebuild all in dir
    local sd=
    local dot_ins_d=${path_dir}/.ins_dr
    for sd in $(_dd2e ${dot_ins_d}); do
        if [ -d ${dot_ins_d}/${sd}/cnx.d ] && [ -f ${dot_ins_d}/${sd}/res.md ]; then
            echo | ufl_stl0 9 ${dot_ins_d}/${sd}/cnx.d ${dot_ins_d}/${sd}/res.md 2
        fi
    done

    if [ -d $path_dir/_cntx.ins.d ] && [ -f $path_dir/_cntx.res.md ]; then
        echo | ufl_stl0 9 $path_dir/_cntx.ins.d $path_dir/_cntx.res.md 2
        # echo | ufl_stl0 9 $path_dir/_cntx.ins.d $path_dir/002.nbash_opus.file.md 2
    fi

    #! rebuild all in .d/.lst/cntx.res.copy.lst
    #local cpy_pth=
    #for cpy_pth in $(_f2e ${path_dir}/.d/.lst/cntx.res.copy.lst); do
    #    echo -e "${GREEN}\$cpy_pth = ' file://$cpy_pth'${NORMAL}"
    #
    #    if [ -d $path_dir/_cntx.ins.d ] && [ -f $cpy_pth ]; then
    #        echo | ufl_stl0 9 $path_dir/_cntx.ins.d $cpy_pth 2
    #    fi
    #
    #done

    cp -f $path_dir/_cntx.res.md $path_dir/002.nbash_opus.file.md

    # _edit $path_dir/_cntx.res.md
    [[ "-edit" == "${ufl_stl0_9_glar_edit}" ]] && _edit $path_dir/_cntx.res.md
    #! END BODY FN ---------------------------------------

    cd $PPWD
    return 0

}

_rbld_res_md_rnd7_d3426cd "$@"
