#!/usr/bin/bash

fn_{post_dr_nm}(){
    
    
    
    local fl_nm={start_sh_pth}
    local dir_dkr={dr_nm}/dkr.d
    local dkr_fl="$dir_dkr"/Docker.stl
    local dck_cmp="$dir_dkr"/docker-compose.stl.yml

    [[ -f ${fl_nm} ]] || {
        echo -e "${ECHO_RET1} in file://$fn_nm , line=${LINENO}  EXEC : '[[ -f ${fl_nm} ]]', return 1${NRM}" >&2
        return 1
    }

    echo -e "${ECHO_INFO} START $fl_nm check that ${NRM}"


}
fn_{post_dr_nm} "@"