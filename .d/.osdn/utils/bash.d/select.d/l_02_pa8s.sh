#!/bin/bash

fn_3049_24351(){
    
    local fl_pth_fn_3049_24351="${HOME}/edu_lnx/.d/.osdn/utils/bash.d/select.d/l_02_pa8s.sh"
    local dr_pth_fn_3049_24351=$(dirname ${HOME}/edu_lnx/.d/.osdn/utils/bash.d/select.d/l_02_pa8s.sh)
    local fl_nm_fn_3049_24351=$(basename ${HOME}/edu_lnx/.d/.osdn/utils/bash.d/select.d/l_02_pa8s.sh)
    local rnd=3049_24351
    
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
    
    local -A arg_arr=(aaa bbb)
    local -A res_arr=(ccc ddd)
    local res=

    l_02_pa8s arg_arr res_arr res
    
    
    return 0
    
}

fn_3049_24351 $@