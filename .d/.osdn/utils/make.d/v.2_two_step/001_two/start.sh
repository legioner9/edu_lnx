#!/bin/bash

fn_23483_22096(){

    local fl_pth_fn_23483_22096="${HOME}/edu_lnx/.d/.osdn/utils/make.d/v.2_two_step/001_two/start.sh"
    local dr_pth_fn_23483_22096=$(dirname ${HOME}/edu_lnx/.d/.osdn/utils/make.d/v.2_two_step/001_two/start.sh)
    local fl_nm_fn_23483_22096=$(basename ${HOME}/edu_lnx/.d/.osdn/utils/make.d/v.2_two_step/001_two/start.sh)
    local rnd=23483_22096

        [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # {{body}}
    eval "cd \${dr_pth_fn_${rnd}} || return 1"

    make hello
    
    ./hello.cxe
    return 0

}

fn_23483_22096 $@