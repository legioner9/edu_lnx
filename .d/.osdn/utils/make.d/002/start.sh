#!/bin/bash

fn_23721_27391(){

    local fl_pth_fn_23721_27391="${HOME}/edu_lnx/.d/.osdn/utils/make.d/002/start.sh"
    local dr_pth_fn_23721_27391=$(dirname ${HOME}/edu_lnx/.d/.osdn/utils/make.d/002/start.sh)
    local fl_nm_fn_23721_27391=$(basename ${HOME}/edu_lnx/.d/.osdn/utils/make.d/002/start.sh)
    local rnd=23721_27391
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # {{body}}
    eval "cd \${dr_pth_fn_${rnd}} || return 1"

    make hello
    
    ./hello.exe
    return 0

}

fn_23721_27391 @