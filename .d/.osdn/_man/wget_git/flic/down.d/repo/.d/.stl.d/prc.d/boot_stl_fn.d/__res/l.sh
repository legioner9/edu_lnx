#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_all_name_fn2e() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_all_name_fn2e`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_all_name_fn2e _e_prc` to edit "fn block", `l_00_all_name_fn2e _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_all_name_fn2e.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_all_name_fn2e.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout all function and alias in shell
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_all_name_fn2e

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

declare -F -p | cut -d " " -f 3
alias

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_all_name_fn2e @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_color2e() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_color2e`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_color2e _e_prc` to edit "fn block", `l_00_color2e _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_color2e.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_color2e.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout stl color
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_color2e

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

echo -e "

    W WHT
    N BLK
    R RED
    G GRN
    Y YLW
    B BLU
    M MGN
    C CYN
    D GRN

    L LLG
    H HLG

    Z NRM

    F font
    E ground
    X revece font-ground
    P delete font
    



    IRIS short:

    NRM - reset

    LLG - low brightness
    HLG - hight brightness
    
    BLK - black
    RED - red
    GRN - green
    YLW - yellow
    BLU - blue
    MGN - purple
    CYN - cyan
    GRY - grey
    WHT - white


    RVC - revece font-ground
    ULN - under line
    U2L - under 2 line
    ITL - italy
    MIG - mig
    CRS - cros

    BLKG - black ground NG
    REDG - red ground RG 
    GRNG - green ground
    YLWG - yellow ground
    BLUG - blue ground
    MGNG - purple ground
    CYNG - cyan ground
    WHTG - white ground

    FE - delete chars


$FN FN - black $NRM
$FNL FNL - blackl $NRM
$FNH FNH - blackh $NRM

$FR FR - red $NRM
$FRL FRL - redl $NRM
$FRH FRH - redh $NRM

$FG FG - green $NRM
$FGL FGL - greenl $NRM
$FGH FGH - greenh $NRM

$FY FY - yellow $NRMFGH
$FYL FYL - yellowl $NRMFGH
$FYH FYH - yellowh $NRMFGH

$FB FB - blue $NRM
$FBL FBL - bluel $NRM
$FBH FBH - blueh $NRM

$FM FM - purple $NRM
$FML FML - purplel $NRM
$FMH FMH - purpleh $NRM

$FC FC - cyan $NRM
$FCL FCL - cyanl $NRM
$FCH FCH - cyanh $NRM

$FD FD - grey $NRM
$FDL FDL - greyl $NRM
$FDH FDH - greyh $NRM

$FW FW - white $NRM
$FWL FWL - whitel $NRM
$FWH FWH - whiteh $NRM

$ENL ENL - blackl ground $NRM
$ENH ENH - blackg ground $NRM

with font \$FN
$FN$ERL ERL - redl ground $NRM
$FN$ERH ERH - redh ground $NRM

$FN$EGL EGL - greenl ground $NRM
$FN$EGH EGH - greenh ground $NRM

$FN$EYL EYL - yellowl ground $NRM
$FN$EYH EYH - yellowh ground $NRM

$FN$EBL EBL - bluel ground $NRM
$FN$EBH EBH - blueh ground $NRM

$FN$EML EML - purplel ground $NRM
$FN$EMH EMH - purpleh ground $NRM

$FN$ECL ECL - cyanl ground $NRM
$FN$ECH ECH - cyanh ground $NRM

$FN$EDL EDL - greyl ground $NRM
$FN$EDH EDH - greyh ground $NRM

"

local font=(FN FNL FNH
    FR FRL FRH
    FG FGL FGH
    FY FYL FYH
    FB FBL FBH
    FM FML FMH
    FC FCL FCH
    FD FDL FDH
    FW FWL FWH
)

local ground=(ENL ENH
    ERL ERH
    EGL EGH
    EYL EYH
    EBL EBH
    EML EMH
    ECL ECH
    EDL EDH
)

# unset yes
# read -r -p "display ALL? only 'y'" yes
# if [[ "y" == "$yes" ]]; then
for fnt in ${font[@]}; do
    for grn in ${ground[@]}; do
        eval "echo -e \"\\\$\$fnt\\\$\$grn \$$fnt\$$grn SDFfhn.;90*&\$NRM\" \"\\\$\$fnt\\\$\$grn\\\$RVC \$$fnt\$$grn\$RVC SDFfhn.;90*&\$NRM\""
    done
done
# fi
echo "------------------------------------------AVESOME:------------------------------------------------"

font=(FN FNL FNH
    FR FRL FRH
    FG FGL FGH
    FY FYL FYH
    FB FBL FBH
    FM FML FMH
    FC FCL FCH
    FD FDL FDH
    FW FWL FWH
)

ground=(EDH
)

for fnt in ${font[@]}; do
    for grn in ${ground[@]}; do
        eval "echo -e \"\\\$\$fnt\\\$\$grn \$$fnt\$$grn SDFfhn.;90*&\$NRM\" \"\\\$\$fnt\\\$\$grn\\\$RVC \$$fnt\$$grn\$RVC SDFfhn.;90*&\$NRM\""
    done
done

font=(FNL FBL FML
)

ground=(ENL ENH
    ERL ERH
    EGL EGH
    EYL EYH
    EBL EBH
    EML EMH
    ECL ECH
    EDL EDH
)

for fnt in ${font[@]}; do
    for grn in ${ground[@]}; do
        eval "echo -e \"\\\$\$fnt\\\$\$grn \$$fnt\$$grn SDFfhn.;90*&\$NRM\" \"\\\$\$fnt\\\$\$grn\\\$RVC \$$fnt\$$grn\$RVC SDFfhn.;90*&\$NRM\""
    done
done
echo -e "

    l_00_echo_err   : ECHO_ERR =$FNL$ERH$RVC \$FNL\$ERH\$RVC $NRM
    l_00_echo_warn  : ECHO_WARN=$FNL$EYH$RVC \$FNL\$EYH\$RVC $NRM
    l_00_echo_info  : ECHO_INFO=$FNL$EGH$RVC \$FNL\$EGH\$RVC $NRM
    l_00_echo_code  : ECHO_CODE=$FNL$ECH$RVC \$FNL\$ECH\$RVC $NRM
    l_00_echo_exec  : ECHO_EXEC=$FNL$EBH$RVC \$FNL\$EBH\$RVC $NRM
    l_00_echo_sys   : ECHO_SYS =$FNL$EMH$RVC \$FNL\$EMH\$RVC $NRM

    l_00_echo_ret1  : ECHO_RET1=$FRL$EDH$RVC \$FRL\$EDH\$RVC $NRM
    l_00_echo_ques  : ECHO_QUES=$FCL$EDH$RVC \$FCL\$EDH\$RVC $NRM

    l_00_echo_succ  : ECHO_SUCC=$FML$EGH$RVC \$FML\$EGH\$RVC $NRM
    l_00_echo_fail  : ECHO_FAIL=$FML$ERH$RVC \$FML\$ERH\$RVC $NRM

    l_00_echo_yes   : ECHO_YES=$FBL$EGH$RVC \$FBL\$EGH\$RVC $NRM
    l_00_echo_no    : ECHO_NO=$FBL$ERH$RVC \$FBL\$ERH\$RVC $NRM

    l_00_echo_true  : ECHO_TRUE=$FNL$EGH \$FNL\$EGH $NRM
    l_00_echo_fls   : ECHO_FLS=$FNL$ERH \$FNL\$ERH $NRM

    $FRL$EDH$RVC \$FRL\$EDH\$RVC $NRM
    $FGL$EDH$RVC \$FGL\$EDH\$RVC $NRM
    $FYL$EDH$RVC \$FYL\$EDH\$RVC $NRM
    $FBL$EDH$RVC \$FBL\$EDH\$RVC $NRM
    $FML$EDH$RVC \$FML\$EDH\$RVC $NRM
    $FCL$EDH$RVC \$FCL\$EDH\$RVC $NRM
    $FDL$EDH$RVC \$FDL\$EDH\$RVC $NRM
    $FWL$EDH$RVC \$FWL\$EDH\$RVC $NRM
    
    "

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_color2e @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_color_self() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_color_self`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_color_self _e_prc` to edit "fn block", `l_00_color_self _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_color_self.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_color_self.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: up to mem color constants
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_color_self

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

#? ALIASE_OLD
NORMAL='\033[0m'
NRM='\033[0m'

HLIGHT='\033[1m'
HLG='\033[1m'

LLIGHT='\033[2m'
LLG='\033[2m'

BLACK='\033[0;30m'
BLK='\033[0;30m'
FN='\033[0;30m'
FNL=$FN$LLG
FNH=$FN$HLG

RED='\033[0;31m'
FR='\033[0;31m'
FRL=$FR$LLG
FRH=$FR$HLG

GREEN='\033[0;32m'
GRN='\033[0;32m'
FG='\033[0;32m'
FGL=$FG$LLG
FGH=$FG$HLG

YELLOW='\033[0;33m'
YLW='\033[0;33m'
FY='\033[0;33m'
FYL=$FY$LLG
FYH=$FY$HLG

BLUE='\033[0;34m'
BLU='\033[0;34m'
FB='\033[0;34m'
FBL=$FB$LLG
FBH=$FB$HLG

MAGENTA='\033[0;35m'
MGN='\033[0;35m'
FM='\033[0;35m'
FML=$FM$LLG
FMH=$FM$HLG

CYAN='\033[0;36m'
CYN='\033[0;36m'
FC='\033[0;36m'
FCL=$FC$LLG
FCH=$FC$HLG

GRAY='\033[0;37m'
GRY='\033[0;37m'
FD='\033[0;37m'
FDL=$FD$LLG
FDH=$FD$HLG

WHITE='\033[38m'
WHT='\033[38m'
FW='\033[38m'
FWL=$FW$LLG
FWH=$FW$HLG

#? ALIASE_CUR
CFYUP='\033[1m'
CFYDW='\033[2m'

FITAL='\033[3m'
ITL='\033[3m'

ULINE='\033[4m'
ULN='\033[4m'

FMIG='\033[5m'
MIG='\033[5m'

FGREV='\033[7m'
RVC='\033[7m'

FDEL='\033[8m'
FP='\033[8m'

FCROS='\033[9m'
CRS='\033[9m'

U2LINE='\033[21m'
U2L='\033[21m'

APLINE='\033[53m'

#? whell usefull
WBLKG=$WHT$BLKG

BREDG=$BLK$REDG
BGRNG=$BLK$GRNG
BYLWG=$BLK$YLWG
BBLUG=$BLK$BLUG
BMGNG=$BLK$MGNG
BCYNG=$BLK$CYNG
BWHTG=$BLK$WHTG

CM_0='\033[0m'
CM_1='\033[1m'
CM_2='\033[2m'

FM_3='\033[3m'   # FITAL
FM_4='\033[4m'   # ULINE
FM_5='\033[5m'   # FMIG
FM_6='\033[6m'   # FMIG
FM_7='\033[7m'   # FGREV
FM_8='\033[8m'   # FDEL
FM_9='\033[9m'   # FCROS
FM_21='\033[21m' # U2LINE
FM_53='\033[53m' # APLINE

FC_0='\033[30m' # black
ENL='\033[30m'  # black

FC_1='\033[31m' # red
FC_2='\033[32m' # green
FC_3='\033[33m' # yellow
FC_4='\033[34m' # blue
FC_5='\033[35m' # purple
FC_6='\033[36m' # cyan
FC_7='\033[37m' # white

GCN_0='\033[40m'
ENL='\033[40m'

GCN_1='\033[41m'
ERL='\033[41m'

GCN_2='\033[42m'
EGL='\033[42m'

GCN_3='\033[43m'
EYL='\033[43m'

GCN_4='\033[44m'
EBL='\033[44m'

GCN_5='\033[45m'
EML='\033[45m'

GCN_6='\033[46m'
ECL='\033[46m'

GCN_7='\033[47m'
EDL='\033[47m'

GCH_0='\033[100m'
BLKG='\033[100m'
ENH='\033[100m'

GCH_1='\033[101m'
REDG='\033[101m'
ERH='\033[101m'

GCH_2='\033[102m'
GRNG='\033[102m'
EGH='\033[102m'

GCH_3='\033[103m'
YLWG='\033[103m'
EYH='\033[103m'

GCH_4='\033[104m'
BLUG='\033[104m'
EBH='\033[104m'

GCH_5='\033[105m'
MGNG='\033[105m'
EMH='\033[105m'

GCH_6='\033[106m'
CYNG='\033[106m'
ECH='\033[106m'

GCH_7='\033[107m'
DHTG='\033[107m'
EDH='\033[107m'

GCZ_0='\033[40m'
GCZ_1='\033[41m'
GCZ_2='\033[42m'
GCZ_3='\033[43m'
GCZ_4='\033[44m'
GCZ_5='\033[45m'
GCZ_6='\033[46m'
GCZ_7='\033[47m'
GCZ_8='\033[100m'
GCZ_9='\033[101m'
GCZ_10='\033[102m'
GCZ_11='\033[103m'
GCZ_12='\033[104m'
GCZ_13='\033[105m'
GCZ_14='\033[106m'
GCZ_15='\033[107m'

for cm in 1 2; do
    for fc in {0..7}; do
        for gcz in {0..15}; do
            eval "ST_MFG_0_${cm}_${fc}_${gcz}=\$CM_${cm}\$FC_${fc}\$GCZ_${gcz}"
            eval "ST_MFG_1_${cm}_${fc}_${gcz}=\${FM_7}\$CM_${cm}\$FC_${fc}\$GCZ_${gcz}"
        done
    done
done

for fc in {0..7}; do
    eval "GCZ0CM1_${fc}=\$CM_1\$GCZ_0\$FC_${fc}"
done

# for cm in 1 2; do
#     for fc in {0..7}; do
#         for gcz in {0..15}; do
#             eval "ST_MFGR_${cm}_${fc}_${gcz}=\${FM_7}\$CM_${cm}\$FC_${fc}\$GCZ_${gcz}"
#         done
#     done
# done

ECHO_ERR=$FNL$ERH$RVC
ECHO_WARN=$FNL$EYH$RVC
ECHO_INFO=$FNL$EGH$RVC
ECHO_CODE=$FNL$ECH$RVC
ECHO_EXEC=$FNL$EBH$RVC
ECHO_SYS=$FNL$EMH$RVC

ECHO_RET1=$FRL$EDH$RVC
ECHO_QUES=$FC$EDH$RVC

ECHO_SUCC=$FML$EGH$RVC
ECHO_FAIL=$FML$ERH$RVC

ECHO_YES=$FBL$EGH$RVC
ECHO_NO=$FBL$ERH$RVC




    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
l_00_color_self @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_date() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_date`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_date _e_prc` to edit "fn block", `l_00_date _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_date.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_date.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout %s_%d%m%Y%H%M%S
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_date

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

local dt=
local st=

dt=$(date +%d%m%Y%H%M%S)
st=$(date +%s)
echo "${st}_${dt}"

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_date @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_echo_code() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_echo_code`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_echo_code _e_prc` to edit "fn block", `l_00_echo_code _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_flow" == "$1" ]]; then
        . ${tst_nm_dr}/_flow_tst.sh || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/_flow_tst.sh' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_flow_1" == "$1" ]]; then
        . ${tst_nm_dr}/_flow_tst_v1.sh || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/_flow_tst_v1.sh' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_echo_code.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_echo_code.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout \$1 like code
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
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_echo_code

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "$FNL$ECH$RVC$*$NRM"

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_echo_code @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_echo_err() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_echo_err`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_echo_err _e_prc` to edit "fn block", `l_00_echo_err _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_echo_err.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_echo_err.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stderr \$1 like error
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_echo_err

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "$FNL$ERH$RVC$*$NRM" >&2

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_echo_err @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_echo_exec() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_echo_exec`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_echo_exec _e_prc` to edit "fn block", `l_00_echo_exec _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_echo_exec.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_echo_exec.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout \$1 like exec function
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_echo_exec

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "$FNL$EBH$RVC$*$NRM"

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_echo_exec @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_echo_fail() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_echo_fail`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_echo_fail _e_prc` to edit "fn block", `l_00_echo_fail _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_echo_fail.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_echo_fail.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stderr \$1 like fail tst
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_echo_fail

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "$FML$ERH$RVC$*$NRM"
    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_echo_fail @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_echo_fls() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_echo_fls`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_echo_fls _e_prc` to edit "fn block", `l_00_echo_fls _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_echo_fls.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_echo_fls.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout \$1 like false
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_echo_fls

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "$FNL$ERH$*${NRM}"

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_echo_fls @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_echo_info() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_echo_info`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_echo_info _e_prc` to edit "fn block", `l_00_echo_info _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_echo_info.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_echo_info.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout \$1 like info
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_echo_info

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "$FNL$EGH$RVC$*$NRM"

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_echo_info @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_echo_no() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_echo_no`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_echo_no _e_prc` to edit "fn block", `l_00_echo_no _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_echo_no.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_echo_no.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout \$1 like negative ansver
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_echo_no

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "$FBL$ERH$RVC$*$NRM"
    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_echo_no @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_echo_ques() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_echo_ques`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_echo_ques _e_prc` to edit "fn block", `l_00_echo_ques _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_echo_ques.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_echo_ques.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout \$1 like question
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_echo_ques

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "$FCL$EDH$RVC$*$NRM"

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_echo_ques @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_echo_ret1() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_echo_ret1`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_echo_ret1 _e_prc` to edit "fn block", `l_00_echo_ret1 _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_echo_ret1.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_echo_ret1.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stderr \$1 like 'return 1'
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_echo_ret1

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "$FRL$EDH$RVC$*$NRM" >&2

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_echo_ret1 @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_echo_succ() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_echo_succ`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_echo_succ _e_prc` to edit "fn block", `l_00_echo_succ _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_echo_succ.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_echo_succ.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout \$1 like success tst
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_echo_succ

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "$FML$EGH$RVC$*$NRM"
    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_echo_succ @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_echo_sys() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_echo_sys`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_echo_sys _e_prc` to edit "fn block", `l_00_echo_sys _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_echo_sys.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_echo_sys.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout \$1 like system message
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_echo_sys

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "$FNL$EMH$RVC$*$NRM"

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_echo_sys @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_echo_true() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_echo_true`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_echo_true _e_prc` to edit "fn block", `l_00_echo_true _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_echo_true.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_echo_true.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout \$1 like true
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_echo_true

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "$FNL$EGH$*$NRM"

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_echo_true @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_echo_warn() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_echo_warn`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_echo_warn _e_prc` to edit "fn block", `l_00_echo_warn _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_echo_warn.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_echo_warn.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout \$1 like warning
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_echo_warn

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "$FNL$EYH$RVC$*$NRM"

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_echo_warn @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_echo_yes() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_echo_yes`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_echo_yes _e_prc` to edit "fn block", `l_00_echo_yes _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_echo_yes.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_echo_yes.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout \$1 like yes
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_echo_yes

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "$FBL$EGH$RVC$*$NRM"

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_echo_yes @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_err_name2e() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_err_name2e`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_err_name2e _e_prc` to edit "fn block", `l_00_err_name2e _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_err_name2e.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_err_name2e.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout STL errors name
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_err_name2e

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

echo -e "STL list standart name of error
EMPTY
NOT_EMPTY
FILE_EXIST
FILE_NOT_EXIST
DIR_EXIST
DIR_NOT_EXIST
ARGS_NUBER
FAIL_EXEC
SUCC_EXEC        
"

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_err_name2e @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_err_p_r0() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_err_p_r0`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_err_p_r0 _e_prc` to edit "fn block", `l_00_err_p_r0 _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_err_p_r0.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_err_p_r0.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stderr \$1 like error and wait ETR or ^C
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_err_p_r0

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "${ECHO_ERR}$*${NRM}
${ECHO_INFO}ETR - continue, ^C - exit shell process${NRM}" >&2
read -r

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_err_p_r0 @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_err_struct2e() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_err_struct2e`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_err_struct2e _e_prc` to edit "fn block", `l_00_err_struct2e _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_err_struct2e.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_err_struct2e.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout err struct STL
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_err_struct2e

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

echo -e "exec:'\${FNN} \$*' in file://\${STL_D_PATH}/prc.d/\${FNN} , line=\${LINENO} 
expl: str_expl
evnt: nm_err :: 'bdy_err'
actn: return num_ret >&2
"

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_err_struct2e @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_fail_p_r1() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_fail_p_r1`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_fail_p_r1 _e_prc` to edit "fn block", `l_00_fail_p_r1 _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_fail_p_r1.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_fail_p_r1.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stderr \$1 like ret1 and wait ETR or ^C
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_fail_p_r1

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "${ECHO_RET1}$*${NRM}
${ECHO_ERR}ETR - continue with 'return 1', ^C - exit shell process${NRM}" >&2
read -r

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_fail_p_r1 @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_info_p_r0() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_info_p_r0`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_info_p_r0 _e_prc` to edit "fn block", `l_00_info_p_r0 _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_info_p_r0.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_info_p_r0.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout STL like info and wait ETR or ^C
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_info_p_r0

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "${ECHO_INFO}$*${NRM}
${ECHO_INFO}ETR - continue with 'return 1', ^C - exit shell process${NRM}" >&2
read -r
    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_info_p_r0 @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_warn_p_r0() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_warn_p_r0`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_warn_p_r0 _e_prc` to edit "fn block", `l_00_warn_p_r0 _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_warn_p_r0.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_warn_p_r0.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout STL like warning and wait ETR or ^C
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_warn_p_r0

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "${ECHO_WARN}$*${NRM}
${ECHO_INFO}ETR - continue, ^C - exit process${NRM}"
read -r

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_warn_p_r0 @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_01_abs_path() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_01_abs_path`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_01_abs_path _e_prc` to edit "fn block", `l_01_abs_path _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_01_abs_path.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_01_abs_path.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: echo abs_path if \$1 PWD \$2 ptr to upath or @ instead empty \$2
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_01_abs_path

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

if [[ -z "$2" ]]; then
    l_00_echo_ret1 "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : \$2 NOT_DEFINE , hint : '$3' : return 1"
    return 1
fi
local dpwd="$1"
if ! [[ "/" == "${dpwd:0:1}" ]]; then
    l_00_echo_ret1 "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : '${dpwd}' NOT_ROOT , hint : '$3' : return 1"
    return 1
fi
eval local arg2=\${$2}
if [ "@" == "$arg2" ]; then
    echo ${dpwd}
    return 0
fi
if [[ -z "$arg2" ]]; then
    l_00_echo_ret1 "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : \$\$2 => '\$$2' NOT_DEFINE , hint : '$3' : return 1"
    return 1
fi

# [[ "/" == "${arg1:0:1}" ]]
if [[ "/" == "${arg2:0:1}" ]]; then
    echo ${arg2}
else
    echo ${dpwd}/${arg2}
fi

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_01_abs_path @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_01_c_up() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_01_c_up`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_01_c_up _e_prc` to edit "fn block", `l_01_c_up _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_01_c_up.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_01_c_up.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: exec (source) recurce in dir \$1 stl_files with ext=.sh
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_01_c_up

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

#! IFS to default value
unset IFS

if [[ -d "$1" ]]; then
    cd "$1" || {
        # l_00_echo_ret1 "'$FNN() $*' :: FAIL_EXEC :: 'cd $1' :: return 1"
        # cd "$PPWD" || l_00_echo_ret1 "'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue"
        echo -e "${ECHO_RET1}'$FNN() $*' :: FAIL_EXEC :: 'cd $1' :: return 1${NRM}"
        cd "$PPWD" || echo -e "${ECHO_RET1}'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        return 1
    }
else
    # l_00_echo_ret1 "'$FNN() $*' :: \$1='$1' is not dir"
    # cd "$PPWD" || l_00_echo_ret1 "'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue"
    echo -e "${ECHO_RET1}'$FNN() $*' :: \$1='$1' is not dir${NRM}"
    cd "$PPWD" || echo -e "${ECHO_RET1}'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
    return 1
fi

local dir=
local item=
local item_path=

local fail_flag=

dir=$(pwd)

for item in *; do

    item_path=$dir/$item

    if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ] && [ "${item##*.}" == "sh" ]; then
        # l_00_echo_code ". file://$item_path"
        echo -e "${ECHO_CODE}. file://$item_path${NRM}"
        . "$item_path" || {
            fail_flag=1
            # l_00_echo_err "'$FNN() $*' :: EXEC_FAIL '. file://$item_path' :: fail_flag=1 :: continue"
            # cd "$PPWD" || l_00_echo_err "'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue"
            echo -e "${ECHO_ERR}'$FNN() $*' :: EXEC_FAIL '. file://$item_path' :: fail_flag=1 :: continue${NRM}"
            cd "$PPWD" || echo -e "${ECHO_ERR}'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        }

    elif [ -d "$item_path" ] && [ "${item:0:1}" != "_" ]; then

        l_01_c_up "$item_path" || {
            fail_flag=1
            # l_00_echo_err "'$FNN() $*' :: EXEC_FAIL 'l_01_c_up file://$item_path' :: fail_flag=1 :: continue"
            # cd "$PPWD" || l_00_echo_err "'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue"
            echo -e "${ECHO_ERR}'$FNN() $*' :: EXEC_FAIL 'l_01_c_up file://$item_path' :: fail_flag=1 :: continue${NRM}"
            cd "$PPWD" || echo -e "${ECHO_ERR}'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue${NRM}"
        }
    fi

done

if [[ 1 -eq ${fail_flag} ]]; then
    # l_00_echo_ret1 "'$FNN() $*' ANY_FAIL"
    echo -e "${ECHO_RET1}'$FNN() $*' ANY_FAIL${NRM}"
    return 1
else
    # l_00_echo_info "'$FNN() $*' ALL_TRUE"
    echo -e "${ECHO_INFO}'$FNN() $*' ALL_TRUE${NRM}"
fi

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_01_c_up @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_01_is_root() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_01_is_root`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_01_is_root _e_prc` to edit "fn block", `l_01_is_root _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_01_is_root.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_01_is_root.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: if \$1 is absolut path return 0 else return 1
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_01_is_root

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

local arg1="$1"

if [[ -z "${arg1}" ]]; then
    l_00_echo_ret1 "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' : \$1 NOT_DEFINE : return 1"
    return 1
fi
if [[ "/" == "${arg1:0:1}" ]]; then
    return 0
else
    return 1
fi

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_01_is_root @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_01_prs_f() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_01_prs_f`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_01_prs_f _e_prc` to edit "fn block", `l_01_prs_f _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_01_prs_f.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_01_prs_f.prc ------------------
    #[[fn_body]]
#? for copy to help block
local path=/the/path/_foo.bar.ext.txt

if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: pars \$1 path - stdout part
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_01_prs_f

RETU: (any {0} | if: [...] {0} | if [...] {1})
EXAM:   ${FNN} [, [, ]]

path=/the/path/_foo.bar.ext.txt      
\$(l_01_prs_f -d $path)   : $(l_01_prs_f -d $path) 
\$(l_01_prs_f -ne $path)  : $(l_01_prs_f -ne $path)   
\$(l_01_prs_f -n $path)   : $(l_01_prs_f -n $path)   
\$(l_01_prs_f -n2 $path)  : $(l_01_prs_f -n2 $path)   
\$(l_01_prs_f -e $path)   : $(l_01_prs_f -e $path)   
\$(l_01_prs_f -e2 $path)  : $(l_01_prs_f -e2 $path) 
\$(l_01_prs_f -pr $path)  : $(l_01_prs_f -pr $path)   
\$(l_01_prs_f -po $path)  : $(l_01_prs_f -po $path)    

"
    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
fi

#! stdout fn introduction
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

local path=
local name_ext=
local name_ext2=
local name2_ext=

if [ $# -ne 2 ]; then
    l_00_echo_ret1 "_prs_f() mast be 2 parameters : illegal number of parameters : return 1"
    return 1
fi
name_ext="${2##*/}"
if [ "$1" = "-d" ]; then
    dirname "$2"
else
    if [ "$1" = "-ne" ]; then
        echo "$name_ext"
    else
        if [ "$1" = "-n" ]; then
            echo "${name_ext%.*}"
        else
            if [ "$1" = "-n2" ]; then
                name2_ext="${name_ext%.*}"
                echo "${name2_ext%.*}"
            else
                if [ "$1" = "-e" ]; then
                    echo "${name_ext##*.}"
                else
                    if [ "$1" = "-e2" ]; then
                        name_ext2="${name_ext%.*}"
                        echo "${name_ext2##*.}"
                    else
                        if [ "$1" = "-pr" ]; then
                            echo "${name_ext:0:1}"
                        else
                            if [ "$1" = "-po" ]; then
                                echo "${name_ext:1}"
                            else
                                l_00_echo_ret1 "$1: parameter mastby: -d -ne -n -n2 -e -e2 -pr -po : return 1"
                                return 1
                            fi
                        fi
                    fi
                fi
            fi
        fi
    fi
fi

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_01_prs_f @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_01_source() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_01_source`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_01_source _e_prc` to edit "fn block", `l_01_source _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_01_source.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_01_source.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: if \$1 is file \`source \$1; return \$?\` else return 1 
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_01_source

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

[ -n "$1" ] || {
    l_00_echo_ret1 "'${FNN} $*' in file://${STL_D_PATH}/prc.d/${FNN} , line=${LINENO} 
expl: \$1 EMPTY
evnt: FAIL_EXEC :: '[ -n \"$1\" ]'
actn: return 1" >&2
    cd "${PWD}" || l_00_echo_ret1 "'${FNN} $*' in file://${STL_D_PATH}/prc.d/${FNN} , line=${LINENO} :: FAIL_EXEC :: 'cd \"${PWD}\"' :: return 1"
    return 1
}

if [ -f "$1" ]; then
    source "$@"
    return $?
else
    l_00_echo_ret1 "'$FNN() $*' in file://${file_name} :: NOT_FILE '$1' :: return 1"
    return 1
fi

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_01_source @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_01_stl_init() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_01_stl_init`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_01_stl_init _e_prc` to edit "fn block", `l_01_stl_init _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_01_stl_init.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_01_stl_init.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: source ${STL_D_PATH}/.stldrc
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_01_stl_init

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
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

l_00_echo_code "source ${STL_D_PATH}/.stldrc"
source "${STL_D_PATH}/.stldrc"


    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_01_stl_init @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_02_arb_tst() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_02_arb_tst`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_02_arb_tst _e_prc` to edit "fn block", `l_02_arb_tst _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_flow" == "$1" ]]; then
        . ${tst_nm_dr}/_flow_tst.sh || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/_flow_tst.sh' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_flow_1" == "$1" ]]; then
        . ${tst_nm_dr}/_flow_tst_v1.sh || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/_flow_tst_v1.sh' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_02_arb_tst.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_02_arb_tst.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: 
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
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_02_arb_tst

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

unset IFS

if [[ -d "$1" ]]; then
    cd "$1" || {
        l_00_echo_ret1 "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: FAIL_EXEC :: 'cd $1' :: return 1" >&2
        return 1
    }
else
    l_00_echo_ret1 "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: \$1='$1' is not dir" >&2
    return 1
fi

local dir=
local item=
local item_path=
local err_flag=0

dir=$(pwd)

for item in *; do
    # echo "\$item=$item"
    [[ "_" == ${item:0:1} ]] && continue
    # /lib.0stl.arb/_XXX_YYY.ram/.grot/_tst/_exec.tst
    item_path=$dir/$item
    item_name="${item%.*}"
    item_ext="${item##*.}"
    file_path=${item_path}/.grot/_tst/exec.tst

    echo -e "${FG}\$file_path= file://$file_path${NRM}"

    if [ -f "$file_path" ]; then
        # echo ". $file_path"
        . "$file_path" || {
            l_00_echo_err "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: EXEC_FAIL '. file://$file_path' :: err_flag=1" >&2
            cd "$PPWD" || l_00_echo_err "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
            err_flag=1
        }
    fi
done

if [[ 1 -eq ${err_flag} ]]; then
    l_00_echo_ret1 "in lib_dir= file://$1 FAIL_TST" >&2
    cd "$PPWD" || l_00_echo_err "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
    return 1
else
    l_00_echo_info "in lib_dir= file://$1 TRUE_TST"
    cd "$PPWD" || l_00_echo_err "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
    return 0
fi


    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_02_arb_tst @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_02_arb_up() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_02_arb_up`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_02_arb_up _e_prc` to edit "fn block", `l_02_arb_up _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_02_arb_up.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_02_arb_up.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: \$1 arb_dr for exec fn.sh (err_flag)
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_02_arb_up

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

#! ptr_path
local ptr_path="$1"
ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

unset IFS

if [[ -d "$ptr_path" ]]; then
    cd "$ptr_path" || {
        l_00_echo_ret1 "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: FAIL_EXEC :: 'cd $ptr_path' :: return 1" >&2
        return 1
    }
else
    echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: \$ptr_path='$ptr_path' is not dir" >&2
    return 1
fi

local dir=
local item=
local ret1=0

for item in $(ls "$ptr_path"); do
    # echo "\$item=$item"
    # lib.0stl.arb/_XXX_YYY.ram/.grot/_XXX_YYY.sh
    item_path=$ptr_path/$item
    item_name="${item%.*}"
    item_ext="${item##*.}"
    file_path=${item_path}/.grot/${item_name}.sh

    # echo "\$file_path= file://$file_path"

    if [ -f "$file_path" ] && [ "${item:0:1}" != "_" ] && [ "${item##*.}" == "ram" ]; then
        # echo ". $file_path"
        l_00_echo_info "${file_path} in TST"
        . "$file_path" || {
            l_00_echo_err "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: EXEC_FAIL '. file://$file_path' :: ret1=1"
            ret1=1
        }
    fi
done

[[ 0 -eq ${ret1} ]] || {

    echo -e "${ECHO_FAIL}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: in $ptr_path 'ANY_FAIL' return 1${NRM}" >&2
    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 1

}

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_02_arb_up @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_02_edit() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_02_edit`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_02_edit _e_prc` to edit "fn block", `l_02_edit _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_02_edit.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_02_edit.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: 
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_02_edit

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

if [[ -n "$1" ]]; then
    l_00_echo_code "THIS_ARG1=$1"
    ptr_path="$1"
else
    l_00_echo_code "THIS_ARG1=$PPWD"
    ptr_path="$PPWD"

fi

ptr_path=$(l_01_abs_path $PPWD "ptr_path")

[ -e $ptr_path ] || {
    l_00_echo_ret1 "in fs= file://${STL_D_PATH}/.stldrc  , line=${LINENO} : '$FNN() $*' :, EXEC: edit_boot_stl_fn $@ : NOT_ENTETY : 'file://$ptr_path' : return 1" >&2
    cd $PPWD
    return 1
}
if type "codium" 2>/dev/null; then
    l_00_echo_code "codium $ptr_path"
    codium $2 "$ptr_path"
else
    if type "code" 2>/dev/null; then
        l_00_echo_code "code $ptr_path${NORMAL}"
        code $2 "$ptr_path"
    else
        if type "gvim" 2>/dev/null && type "mate-terminal" 2>/dev/null && [ -f $ptr_path ]; then
            l_00_echo_code "mate-terminal -- sh -c gvim -v +$2 $ptr_path${NORMAL}"
            mate-terminal -- sh -c "gvim -v +$2 $ptr_path"
        else
            if type "mc" 2>/dev/null && type "mate-terminal" 2>/dev/null && [ -f $ptr_path ]; then
                l_00_echo_code "mate-terminal -- sh -c mc -e $ptr_path${NORMAL}"
                mate-terminal -- sh -c "mc -e $ptr_path"
            else
                if type "mc" 2>/dev/null && type "mate-terminal" 2>/dev/null && [ -d $ptr_path ]; then
                    l_00_echo_code "mate-terminal -- sh -c mc $ptr_path${NORMAL}"
                    mate-terminal -- sh -c "mc $ptr_path"
                else
                    if type "vim" 2>/dev/null; then
                        l_00_echo_code "vim $ptr_path${NORMAL}"
                        vim "$ptr_path"
                    else
                        l_00_echo_err "editors: codium, code, gvim, vim, mc not enabled" >&2
                    fi
                fi
            fi
        fi
    fi
fi

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_02_edit @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_03_wrap_prc() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_03_wrap_prc`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_03_wrap_prc _e_prc` to edit "fn block", `l_03_wrap_prc _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_03_wrap_prc.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_03_wrap_prc.prc ------------------
    #[[fn_body]]
#! comment before strings

#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: 
TAGS:
\$1 
[, \$2]
CNTL: 
    -h : help
    _go : edit body      : l_02_edit ${fn_nm}
    ${FNN}
"
    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
fi

echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

local FNN=$(l_01_prs_f -n "${1}")
local PPWD=$PWD
local ARGSW=("$@")
local ARGS=("${ARGSW[@]:1}")
local NARGS=$(($# - 1))
local verbose=0
local estat=
local file_name=${STL_D_PATH}/prc.d/boot_stl_fn.d/${FNN}.sh

if ! [[ -d "${PPWD}" ]]; then
    echo -e "${ECHO_RET1}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
    return 1
fi

if [[ "_e" == "$1" ]]; then
    l_02_edit ${file_name}
    return 0
fi

# l_00_echo_exec "${FNN}() $*"

if ! [[ -d ${PPWD} ]]; then
    l_00_echo_ret1 "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
    return 1
fi

#* local opt_dir=${STL_DATA_D_PATH}/data.0stl.arb/tst_prc_0stl.ram/.grot/.opt
#* local depo_dir=${STL_DATA_D_PATH}/data.0stl.arb/tst_prc_0stl.ram/.grot/.depo

local fn_sh_grot=$(dirname "${1}")

local fn_sh_file="${fn_sh_grot}/${FNN}.prc"
local fn_hie_file="${fn_sh_grot}/${FNN}.hie"
local d_name=$(dirname ${fn_sh_file})

local sublib_pth=$(dirname $(dirname ${d_name}))
local sublib_pfx=$(l_01_prs_f -e2 ${sublib_pth})
local sublib_num=$(l_01_prs_f -n2 ${sublib_pth})
local sublib_nm=$(l_01_prs_f -ne ${sublib_pth})

# echo -e "${GREEN}\$sublib_num = '$sublib_num'${NORMAL}"

local d_data_ram=${STL_DATA_D_PATH}/${sublib_num}.${sublib_pfx}.arb/${FNN}.ram
local d_lib_ram=${STL_LIB_D_PATH}/${sublib_num}.${sublib_pfx}.arb/${FNN}.ram

local d_data_grot=${d_data_ram}/.grot
local d_lib_grot=${d_lib_ram}/.grot

local d_lib_grot_opt=${d_lib_grot}/.opt
local d_lib_grot_opt_lst=${d_lib_grot_opt}.lst
local d_lib_grot_opt_prc=${d_lib_grot_opt}.prc
local d_lib_grot_opt_tml=${d_lib_grot_opt}.tml

local d_lib_grot_depo=${d_lib_grot}/.depo

if [ -n "$2" ] && [[ "_go" == "$2" ]]; then
    l_02_edit "${fn_sh_file}"
    return 0
fi

if [ -n "$2" ] && [[ "_tst" == "$2" ]]; then
    if ! . ${d_name}/_tst/exec.tst; then
        l_00_echo_ret1 "in fs= file:// , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '. ${d_name}/_tst/exec.tst' : ${hint} : return 1" >&2
        cd $PPWD
        return 1
    fi
    return 0
fi

if [ -n "$2" ] && [[ "_tst_e" == "$2" ]]; then
    l_02_edit ${d_name}/_tst
    return 0
fi

if [ -n "$2" ] && [[ "_depo_d_e" == "$2" ]]; then
    l_02_edit ${d_lib_grot_depo}
    return 0
fi

if [ -n "$2" ] && [[ "_opt_d_e" == "$2" ]]; then
    l_02_edit $d_lib_grot_opt
    return 0
fi

if [ -n "$2" ] && [[ "_flow_1" == "$2" ]]; then
    if ! . ${d_name}/_tst/_flow_tst.sh.v1; then
        l_00_echo_ret1 "in fs= file://${fn_sh_file} , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '_source_w1_isf ${d_name}/_tst/_flow_tst.sh.v1' : ${hint} : return 1" >&2
        cd $PPWD
        return 1
    fi
    return 0
fi

# if [[ "_flow_2" == "$1" ]]; then
#     if ! _source_w1_isf ${d_name}/_tst/_flow_tst.sh.v2; then
#         _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '_source_w1_isf ${d_name}/_tst/_flow_tst.sh.v2' : ${hint} : return 1"
#         cd $PPWD
#         return 1
#     fi
# fi

if [ -n "$2" ] && [[ "_hie_m" == "$2" ]]; then
    more ${fn_hie_file}
    cd $PPWD
    return 0
fi

if [ -n "$2" ] && [[ "_hie_e" == "$2" ]]; then
    l_02_edit ${fn_hie_file}
    cd $PPWD
    return 0
fi

# hint="\$1: \$2: "
# if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
#     return 1
# fi

#* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
local di=
if [ -n "$N" ]; then
    if [ "$N" == "_i" ]; then
        di=1
    else
        di=0
    fi
else
    di=0
fi

#[[ptr_path]]
#! ptr_path
# local ptr_path="$1"
# ptr_path="$(_abs_path "${PPWD}" "ptr_path")"

# _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
# _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
# _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3
# tml {{PPWD}}
# path2nom2d_YYY :: path2nom_YYY for all files (with prev) in dir $1
# path2nom_YYY :: _s2f ${PATH} '${REPO_PATH}' $1 : ST_RC_D_PATH, ST_RC_D_DATA_PATH, ST_RC_DATA_PATH, REPO_PATH, HOME
# _s2d "$HOME/"" '/' $dir - that only for .md path (before normalize path)

#* [ $di -eq 1 ] && echo "info"

#* standart echo fl
# _st_exit "in fs= file://${} , line=${LINENO}, EXEC: ${FNN} $* : 'SIGN_STR' (\$N) : 'file://${}' : ${hint} : return 1"
# cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 0|1" >&2
# return 1

#* greeting
# [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

#* errno
# cmd arg
# errno=$?
# return ${errno}

#* rename args

#* check cntl

#* inname cntl

# echo "\${ARGS[0]} = '${ARGS[0]}'"
# echo "\${ARGS[1]} = '${ARGS[1]}'"
# echo "\${ARGS[2]} = '${ARGS[2]}'"

# echo "exec : '. ${ARGSW[@]}'"
. ${ARGSW[@]}

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_03_wrap_prc @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_04_arb_prc_up() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_04_arb_prc_up`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_04_arb_prc_up _e_prc` to edit "fn block", `l_04_arb_prc_up _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_04_arb_prc_up.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_04_arb_prc_up.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: arb prc up to mem
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_04_arb_prc_up

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

unset IFS

if [[ -d "$1" ]]; then
    cd "$1" || {
        l_00_echo_err "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: FAIL_EXEC :: 'cd $1' :: return 1"
        return 1
    }
else
    l_00_echo_err "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: \$1='$1' is not dir"
    return 1
fi

local dir=
local item=
local item_path=

dir=$(pwd)

for item in *; do
    # echo "\$item=$item"
    # lib.0stl.arb/_XXX_YYY.ram/.grot/_XXX_YYY.sh
    item_path=$dir/$item
    item_name="${item%.*}"
    item_ext="${item##*.}"
    file_path=${item_path}/.grot/${item_name}.prc

    # echo "\$file_path= file://$file_path"

    if [ -f "$file_path" ] && [ "${item_name:0:1}" != "_" ] && [ "${item##*.}" == "ram" ]; then
        # echo ". $file_path"
        # dotstldrc_wrap_prc_inner "$file_path" || {
        #     #? . "$file_path" || {
        #     echo "'$FNN() $*' in file://${STL_D_PATH}/.stldrc , line=${LINENO} :: EXEC_FAIL 'dotstldrc_wrap_prc $file_path' :: return 1" >&2
        #     cd "$PPWD" || echo "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue" >&2
        #     return 1
        # }

        echo -e "${GREEN}\$file_path = '$file_path'${NORMAL}"

        local name_function=$(l_01_prs_f -n "$file_path")

        echo -e "${GREEN}\$name_function = '$name_function'${NORMAL}"

        # type dotstldrc_wrap_prc_inner

        l_00_echo_code "alias ${name_function}=\"l_03_wrap_prc $file_path ${ARGS[@]:1}\""

        eval "alias ${name_function}=\"l_03_wrap_prc $file_path ${ARGS[@]:1}\""

        # eval "export ${name_function}"

        eval "type ${name_function}"
    fi
done


    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_04_arb_prc_up @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_04_is_lfn() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_04_is_lfn`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_04_is_lfn _e_prc` to edit "fn block", `l_04_is_lfn _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_flow" == "$1" ]]; then
        . ${tst_nm_dr}/_flow_tst.sh || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/_flow_tst.sh' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_flow_1" == "$1" ]]; then
        . ${tst_nm_dr}/_flow_tst_v1.sh || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/_flow_tst_v1.sh' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_04_is_lfn.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_04_is_lfn.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: 
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : . ${tst_nm_dr}/${FNN}/exec.tst
    _flow       : tst _flow     : . ${tst_nm_dr}/${FNN}/_flow_tst.sh
    _flow_1     : tst _flow_1   : . ${tst_nm_dr}/${FNN}/_flow_tst_v1.sh

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_04_is_lfn

RETU: (any {0} | if: [...] {0} | if [...] {1} | result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
EXAM:   ${FNN} [, [, ]]
"
    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
fi

#! stdout fn introduction
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_04_is_lfn @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_04_ord_l_xx() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_04_ord_l_xx`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_04_ord_l_xx _e_prc` to edit "fn block", `l_04_ord_l_xx _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_04_ord_l_xx.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_04_ord_l_xx.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: ord .sh .prc /tst for \$1 like l_xx_nm
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_04_ord_l_xx

RETU: (any {0} | if: [...] {0} | if [...] {1} | result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
EXAM:   ${FNN} [, [, ]]
"
    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
fi

[[ -n "$1" ]] || {
    l_00_echo_ret1 "\$1 is empty [like l_xx_nm]"
    return 1
}

l_00_info_p_r0 "ord $1 function?"

l_01_source ${STL_D_PATH}/prc.d/boot_stl_fn.d/_ord_sh_prc_tst_for_l_xx.sh $1
l_01_stl_init

#! stdout fn introduction
# echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_04_ord_l_xx @
#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_99_tst_l() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_99_tst_l`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_99_tst_l _e_prc` to edit "fn block", `l_99_tst_l _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_flow" == "$1" ]]; then
        . ${tst_nm_dr}/_flow_tst.sh || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/_flow_tst.sh' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_flow_1" == "$1" ]]; then
        . ${tst_nm_dr}/_flow_tst_v1.sh || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/_flow_tst_v1.sh' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_99_tst_l.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_99_tst_l.prc ------------------
    #[[fn_body]]
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

    local item=
    local res_fl=${fn_dr}/__res/l.sh
    : >${res_fl}
    # /prc.d/boot_stl_fn.d/__tst
    for item in $(ls ${fn_dr}); do
        [[ -f ${fn_dr}/${item} && "_" != "${item:0:1}" ]] && {
            echo -e "${GREEN}\$item = '$item'${NORMAL}"
            cat "${fn_dr}/${item}" >>"${res_fl}"
        }
    done

    [[ 0 -eq "${ret1}" ]] || {
        l_00_echo_ret1 "$FNN() $*' in file://${file_name} , line=${LINENO} :: ANY_FAIL [ret1] 'code' :: return 1"
        cd "$PPWD" || l_00_echo_err "'$FNN() $*' in fs= file://${STL_D_PATH}/.stldrc , line=${LINENO} , EXEC_FAIL : 'cd $PPWD' : continue"
        return 1
    }

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
l_99_tst_l @
