#!/bin/bash

fn_30627_14518(){

    local fl_pth_fn_30627_14518="${HOME}/edu_lnx/.d/.osdn/utils/gdb/clang_exa/001_first/start.sh"
    local dr_pth_fn_30627_14518=$(dirname ${HOME}/edu_lnx/.d/.osdn/utils/gdb/clang_exa/001_first/start.sh)
    local fl_nm_fn_30627_14518=$(basename ${HOME}/edu_lnx/.d/.osdn/utils/gdb/clang_exa/001_first/start.sh)
    local rnd=30627_14518

    # [[ -z "$1" ]] && {
    #     # snp "out_err"
    #     echo -e "${ECHO_RET1}in file://$fn_nm_fn_30627_14518 , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
    #     return 1
    # }

    [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl_pth_fn_30627_14518 ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }

    local arg_1_fn_30627_14518="$1"
    local arg_2_fn_30627_14518="$2"
    local arg_3_fn_30627_14518="$3"

	# [[ -z "$2" ]] && {
	# 	# snp "out_err"
	# 	echo -e "${ECHO_RET1}in file://$fn_nm_fn_30627_14518 , line=${LINENO} :: ARG_2_NOT_DEFINE is ..., return 1${NRM}" >&2
	# 	return 1
	# }
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

    # cd ${dr_pth_fn_30627_14518} || return 1
    # local dr_1_fn_30627_14518=${dr_pth_fn_30627_14518}/${arg_1_fn_30627_14518}
    # local fl_1_fn_30627_14518=${dr_pth_fn_30627_14518}/${arg_1_fn_30627_14518}
    # contane {\fn_nm\} {{body}}
    eval "cd \${dr_pth_fn_${rnd}} || return 1"

    make hello
    
    ./hello.cxe
    return 0

}

fn_30627_14518 $@