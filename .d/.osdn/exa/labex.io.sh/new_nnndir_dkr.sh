#!/usr/bin/bash

# &&&sh gig labex.io dr for exa

fn_efgaerfe2342fasd(){
    local exa="$HOME/edu_lnx/.d/.osdn/exa"
    local fn_nm=$HOME/edu_lnx/.d/.osdn/exa/labex.io.sh/new_nnndir_dkr.sh
    
    local arg1="$1"
    
    cd "$exa" || {
        echo "${ECHO_RET1} $exa not dir "
        return 1
    }
    
    local  dr_nm="labex.io_$1"
    
    [[ 6 -eq ${#arg1} ]] || {
        
        echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  EXEC : '[[ 6 -eq ${#arg1} ]]', return 1${NRM}" >&2
        return 1
        
    }
    
    if [[ ! -d "$dr_nm" ]];then
        # if [[ ! -d "$drnm" && 6 -eq ${#arg1} ]];then
        
        mkdir "$dr_nm"
        echo -e "$ECHO_EXEC cp -r $exa/labex.io.sh/tml_labex.io_dkr.d/ $dr_nm ${NRM}"
        cp -rv "$exa"/labex.io.sh/tml_labex.io_dkr.d/* "$dr_nm"
        
    else
        
        echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  EXEC : '[[ ! -d \"$dr_nm\" ]]', return 1${NRM}" >&2
        # echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  EXEC : '[[ ! -d \"$dr_nm\" && 6 -eq ${#arg1} ]]', return 1${NRM}" >&2
        return 1
        
    fi
    
    local  start_sh_pth=${exa}/"$dr_nm"/start.sh
    local  post_dr_nm=${arg1}
    local dr_nm="$dr_nm"
    
    
    l_02_s2f "{start_sh_pth}" "${start_sh_pth}" "${start_sh_pth}"
    l_02_s2f "{dr_nm}" "${dr_nm}" "${start_sh_pth}"
    l_02_s2f "{post_dr_nm}" "${post_dr_nm}" "${start_sh_pth}"
    
    #? {FLW}:[NRM PTH]
    l_02_s2f "${HOME}" '${HOME}' "${start_sh_pth}"
    
    
    return 0
    
}

fn_efgaerfe2342fasd $1 || {
    echo -e "${ECHO_RET1} fn_efgaerfe2342fasd $1 in file://$fn_nm${NRM}" >&2
}