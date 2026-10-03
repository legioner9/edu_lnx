#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: all file 'source exec.tst' in ${tst_nm_dr}/
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _flow       : tst _flow     : . ${tst_nm_dr}/${FNN}/_flow_tst.sh
    _flow_1     : tst _flow_1   : . ${tst_nm_dr}/${FNN}/_flow_tst_v1.sh
    
    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_99_tst_l

RETU: (any {0} | if: [...] {0} | if [...] {1})
EXAM:   ${FNN} [, [, ]]
"
    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
fi

#! stdout fn introduction
echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

local tst_dir=${STL_D_PATH}/prc.d/boot_stl_fn.d/__tst
local ret1=0
local exec_tst_fl_pth=
local lnm=
local prn=

for exec_tst_fl_pth in $(find ${tst_dir} -name exec.tst); do
    l_00_echo_info "\${exec_tst_fl_pth} = file://${exec_tst_fl_pth}"
    if . ${exec_tst_fl_pth}; then

        lnm=$(basename $(dirname ${exec_tst_fl_pth}))
        prn=${tst_dr}/${lnm}/.grot/_prn/

        if [[ -d ${tst_dr}/${lnm} ]]; then
            [[ -d "${prn}" ]] || {
                mkdir -p "${prn}"
            }
            md5sum ${fn_dr}/${lnm}.sh >${prn}/${lnm}.md5
            type ${lnm} >${prn}/${lnm}.type
            echo ${fn_dr}/${lnm}.sh >${prn}/${lnm}.pth
        else
            l_00_echo_err "FAIL_EXEC :: '[[ -d ${tst_nm_dr}/${lnm} ]]' :: ret1=1"
            ret1=1
        fi

        # md5sum ${fn_nm} > ${tst_nm_dr}/${FNN}/.grot/_prn/${FNN}.md5
        # echo ${fn_nm} > ${tst_nm_dr}/${FNN}/.grot/_prn/${FNN}.pth
        # type ${FNN} > ${tst_nm_dr}/${FNN}/.grot/_prn/
    else
        ret1=1
    fi

done

[[ 0 -eq "${ret1}" ]] || {
    l_00_echo_ret1 "$FNN() $*' in file://${file_name} , line=${LINENO} :: ANY_FAIL [ret1] 'code' :: return 1"
    cd "$PPWD" || l_00_echo_err "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue"
    return 1
}
