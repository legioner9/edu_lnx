#!/bin/bash

fn_16703_31314(){

    local fl_pth_fn_16703_31314="${HOME}/edu_lnx/.d/.osdn/utils/make.d/001/start.sh"
    local dr_pth_fn_16703_31314=$(dirname ${HOME}/edu_lnx/.d/.osdn/utils/make.d/001/start.sh)
    local fl_nm_fn_16703_31314=$(basename ${HOME}/edu_lnx/.d/.osdn/utils/make.d/001/start.sh)
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # {{body}}
    cd ${dr_pth_fn_16703_31314}
    make hello
    return 0

}

fn_16703_31314 @