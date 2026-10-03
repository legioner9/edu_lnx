#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_color_self() {

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dir}/__prc
    local tst_dr=${fn_dir}/__tst

    local fn_nm=${fn_dir}/${FNN}.sh
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

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_color_self.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh $1
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

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