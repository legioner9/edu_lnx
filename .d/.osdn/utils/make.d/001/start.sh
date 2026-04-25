#!/bin/bash

fn_5627_12114(){

    local fl_pth_fn_5627_12114="${HOME}/edu_lnx/.d/.osdn/utils/make.d/001/start.sh"
    local dr_pth_fn_5627_12114=$(dirname ${HOME}/edu_lnx/.d/.osdn/utils/make.d/001/start.sh)
    local fl_nm_fn_5627_12114=$(basename ${HOME}/edu_lnx/.d/.osdn/utils/make.d/001/start.sh)
    local rnd=5627_12114
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # {{body}}
    eval "cd \${dr_pth_fn_${rnd}} || return 1"

    make hello
    
    ./hello.exe
    return 0

}

fn_5627_12114 @