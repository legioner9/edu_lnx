#!/usr/bin/bash

# &&&sh gig labex.io dir for dir exa

fn_efgae324rfwefasdsd(){
    fn_nm="$HOME/edu_lnx/.d/.osdn/utils/gig_util.sh/new_util_dkr.sh"

    util="$HOME/edu_lnx/.d/.osdn/utils"
    
    arg1="$1"
    
    cd "$util" || {
        echo "${ECHO_RET1} $util not dir "
        return 1
    }

    dr_nm="$arg1.d"
    
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

    # [[ 6 -eq ${#arg1} ]] || {

    #     echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  EXEC : '[[ 6 -eq ${#arg1} ]]', return 1${NRM}" >&2
    #     return 1

    # }

    return 0
    
}

fn_efgae324rfwefasdsd $1 || {
    echo -e "${ECHO_RET1} fn_efgaerfe2342fasd $1 in file://$fn_nm${NRM}" >&2
} 