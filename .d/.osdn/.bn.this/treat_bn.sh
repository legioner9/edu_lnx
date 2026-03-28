#!/bin/bash

fn_2120_17323(){
    
    local fl_pth_fn_2120_17323="${HOME}/edu_lnx/.d/.osdn/.bn.this/treat_bn.sh"
    local dr_pth_fn_2120_17323=$(dirname ${HOME}/edu_lnx/.d/.osdn/.bn.this/treat_bn.sh)
    local fl_nm_fn_2120_17323=$(basename ${HOME}/edu_lnx/.d/.osdn/.bn.this/treat_bn.sh)
    
    #    . "${dr_pth_fn_2120_17323}/bn_init_v2.sh" | xargs -t -0 -n1
    
    . "${dr_pth_fn_2120_17323}/bn_init_v3.sh" > "${dr_pth_fn_2120_17323}"/res.md
    
    l_02_s2f  "${HOME}/edu_lnx/.d/.osdn" ".." "${dr_pth_fn_2120_17323}"/res.md
    
    return 0
    
}

fn_2120_17323 @