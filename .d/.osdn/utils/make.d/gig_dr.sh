#!/bin/bash

fn_11604_520(){
    
    [[ "$1" == "-h" ]] && {
        echo -e "
    :
        this -h for ${HOME}/edu_lnx/.d/.osdn/utils/make.d/gig_dr.sh ::
        doing :: create dir cpy _.d with dr_nm=\$1 [[usually 00N]]
            and ins_file=\$2 [[!!unix style pth]] use l_02_fs2f() in start.sh generate in dr_nm
            use lfoe_gig_sh()
            .
        "
        return 0
    }
    
    local fl_pth_fn_11604_520="${HOME}/edu_lnx/.d/.osdn/utils/make.d/gig_dr.sh"
    local dr_pth_fn_11604_520=$(dirname ${HOME}/edu_lnx/.d/.osdn/utils/make.d/gig_dr.sh)
    local fl_nm_fn_11604_520=$(basename ${HOME}/edu_lnx/.d/.osdn/utils/make.d/gig_dr.sh)
    
    # l_02_fs2f ins.f {{body}} rcv.f
    # {{body}}
    
    local arg1_11604_520="$1"
    local arg2_11604_520="$2"
    
    if [[ -z "${arg2_11604_520}" ]];then
        echo -e "${ECHO_RET1}in file://$fl_pth_fn_11604_520 , line=${LINENO}  ARG2_ISEMPTY, return 1${NRM}" >&2
        return 1
    fi
    
    if [[ ! -f ${arg2_11604_520} ]];then
        
        echo -e "${ECHO_RET1}in file://$fl_pth_fn_11604_520 , line=${LINENO} [[that insert file]] ARG2_NOTFILE::${arg2_11604_520}, return 1${NRM}" >&2
        return 1
        
    fi
    
    cd ${dr_pth_fn_11604_520} || return 1
    
    if [[ -z "${arg1_11604_520}" ]] ;then
        
        echo -e "${ECHO_RET1}in file://$fl_pth_fn_11604_520 , line=${LINENO}  ARGS1_nm_dr is empty, return 1${NRM}" >&2
        return 1
        
    fi
    
    local result_dr="${dr_pth_fn_11604_520}/${arg1_11604_520}"
    
    if [[ -d "${result_dr}" ]] ;then
        
        echo -e "${ECHO_RET1}in file://$fl_pth_fn_11604_520 , line=${LINENO}  ${arg1_11604_520} IS_DIR, return 1${NRM}" >&2
        return 1
        
    fi
    echo "cp -r ${dr_pth_fn_11604_520}/_.d ${result_dr}"
    cp -r ${dr_pth_fn_11604_520}/_.d ${result_dr}
    
    lfoe_gig_sh ${result_dr} start.sh
    
    # l_02_fs2f ins.f {{body}} rcv.f
    
    l_02_fs2f "${arg2_11604_520}" {{body}}  ${result_dr}/start.sh
    
    cd ${result_dr} || return 1
    
    . start.sh
    
    # cd ${result_dr} || return 1
    
    # ./hello.exe
    
    
    
    return 0
    
    
}

fn_11604_520 $@