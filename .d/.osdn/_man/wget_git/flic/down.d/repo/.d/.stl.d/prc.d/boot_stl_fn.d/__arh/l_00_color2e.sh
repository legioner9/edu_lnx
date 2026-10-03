#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: 
# ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# INV:
# ${WHT} ${BLK} ${RED} ${GRN} ${YLW} ${BLU} ${MGN} ${CYN} ${GRY}
# ${NRM} ${ULN} ${U2L} ${LLG} ${HLG} ${MIG} ${CRS}

l_00_color2e() {

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: stdout STL color examles
TAGS: 
\$1 
[, \$2]
CNTL: 
    _e      : _edit body            : _edit file://${sh_file}
    _t      : _edit tst_dir         : _edit file://${tst_dir}
    _d      : exec tst_dir_fn       : . file://${tst_dir_file}
    _f1     : exec flow_dir_file_1  : . file://${flow_dir_file_1}
    _f1_e   : _edit flow_dir_file_1 : _edit file://${flow_dir_file_1}
    _hie_m  : more hie_file         : more file://${hie_file} 
    _hie_e  : _edit hie_file        : _edit file://${hie_file} 
    _data_e : _edit data_dir        : _edit file://${datd_dir} 

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

    ULN - under line
    U2L - under 2 line
    ITL - italy
    MIG - mig
    CRS - cros

    BLKG - black ground
    REDG - red ground
    GRNG - green ground
    YLWG - yellow ground
    BLUG - blue ground
    MGNG - purple ground
    CYNG - cyan ground
    GRYG - grey white ground

    CM_{0..2} color mode
        0 - reset color 
        1 - hight brightness
        2 - low brightness

    FM_{3..9 21 } font mode
        3 - italy
        4 - under line
        5 - mig
        6 - mig
        7 - reverce font-ground
        8 - delete font
        9 - cross font
        21 - double under line
        52 - upper line 

    FC_{0..7} font color
        0 - black
        1 - red
        2 - green
        3 - yellow
        4 - blue
        5 - purple
        6 - cyan
        7 - white

    GCN_{0..7} ground color normal brightness
    GCH_{0..7} ground color hight brightness
    GCZ_{0..7}=GCN_{0..7}
    GCZ_{8..15}=GCH_{0..7}

    ST_MFG_[FGREV{0..1}]_[CM{1..2}]_[FC{0..7}]_[GCZ{0..15}]
    GCZ0CM1_[FC{0..7}] FC on dark ground CM_1 GCZ_0

RETU: 
EXAM: 
    ${FNN}

    #? ALIASE_OLD
    NORMAL='\\033[0m'
    HLIGHT='\\033[1m'
    LLIGHT='\\033[2m'

    #? ALIASE_CUR
    CFYUP='\\033[1m'
    CFYDW='\\033[2m'
    FITAL='\\033[3m'
    ULINE='\\033[4m'
    FMIG='\\033[5m'

    FGREV='\\033[7m'
    FDEL='\\033[8m'
    FCROS='\\033[9m'

    U2LINE='\\033[21m'
    APLINE='\\033[53m'

    #* COLOR MODE
    CM_0='\\033[0m'
    CM_1='\\033[1m'
    CM_2='\\033[2m'

    #* FONT MODE
    FM_3='\\033[3m'   # FITAL
    FM_4='\\033[4m'   # ULINE
    FM_5='\\033[5m'   # FMIG
    FM_6='\\033[6m'   # FMIG
    FM_7='\\033[7m'   # FGREV
    FM_8='\\033[8m'   # FDEL
    FM_9='\\033[9m'   # FCROS
    FM_21='\\033[21m' # U2LINE
    FM_53='\\033[53m' # APLINE

    #* FONT COLOR
    FC_0='\\033[30m' # black
    FC_1='\\033[31m' # red
    FC_2='\\033[32m' # green
    FC_3='\\033[33m' # yellow
    FC_4='\\033[34m' # blue 
    FC_5='\\033[35m' # purple
    FC_6='\\033[36m' # cyan
    FC_7='\\033[37m' # white

    #* GROUND COLOR NORMAL (BRIGHTNESS) 
    GCN_0='\\033[40m' 
    GCN_1='\\033[41m' 
    GCN_2='\\033[42m' 
    GCN_3='\\033[43m' 
    GCN_4='\\033[44m' 
    GCN_5='\\033[45m' 
    GCN_6='\\033[46m'
    GCN_7='\\033[47m'

    #* GROUND COLOR HIGHT (BRIGHTNESS) 
    GCH_0='\\033[100m' 
    GCH_1='\\033[101m' 
    GCH_2='\\033[102m' 
    GCH_3='\\033[103m' 
    GCH_4='\\033[104m' 
    GCH_5='\\033[105m'
    GCH_6='\\033[106m'
    GCH_7='\\033[107m'   

    #* GROUND COLOR ZNUMERATION
    #* NORMAL (BRIGHTNESS)
    GCZ_0='\\033[40m'
    GCZ_1='\\033[41m'
    GCZ_2='\\033[42m'
    GCZ_3='\\033[43m'
    GCZ_4='\\033[44m'
    GCZ_5='\\033[45m'
    GCZ_6='\\033[46m'
    GCZ_7='\\033[47m'
    #* HIGHT (BRIGHTNESS)
    GCZ_8='\\033[100m'
    GCZ_9='\\033[101m'
    GCZ_10='\\033[102m'
    GCZ_11='\\033[103m'
    GCZ_12='\\033[104m'
    GCZ_13='\\033[105m'
    GCZ_14='\\033[106m'
    GCZ_15='\\033[107m'

    ST_MFG_[FGREV{0..1}]_[CM{1..2}]_[FC{0..7}]_[GCZ{0..15}]
    GCZ0CM1_[FC{0..7}]
"
        return 0
    fi



    echo -e "
    CM_{0..2} color mode
        0 - reset color 
        1 - hight brightness
        2 - low brightness

    FM_{3..9 21 } font mode
        3 - italy
        4 - under line
        5 - mig
        6 - mig
        7 - reverce font-ground
        8 - delete font
        9 - cross font
        21 - double under line
        52 - upper line 

    FC_{0..7} font color
        0 - black
        1 - red
        2 - green
        3 - yellow
        4 - blue
        5 - purple
        6 - cyan
        7 - white

    GCN_{0..7} ground color normal brightness
    GCH_{0..7} ground color hight brightness
    GCZ_{0..7}=GCN_{0..7}
    GCZ_{8..15}=GCH_{0..7}

    ST_MFG_[FGREV{0..1}]_[CM{1..2}]_[FC{0..7}]_[GCZ{0..15}]
    GCZ0CM1_[FC{0..7}] FC on dark ground CM_1 GCZ_0
    "

    echo "reset all color effect \033[0m"

    echo "TABLE [FC]"

    for fc in {0..7}; do

        eval "echo -en \"\$FC_${fc} vsdfuiytu \$CM_0\""
        eval "echo -n FC_${fc} - "
        eval "echo \$FC_${fc}"

    done

    echo "TABLE GCZ0CM1_[FC]"

    for fc in {0..7}; do
        eval "echo -en \"\$GCZ0CM1_${fc} vsdfuiytu ${NORMAL}\""
        echo -n "GCZ0CM1_${fc} == GCZ_0 CM_1 FC_${fc}"
        eval "echo \$$GCZ0CM1_${fc}"
    done

    local arr_mfg=(
        ST_MFG_0_2_0_3
        ST_MFG_1_2_0_3
        ST_MFG_1_2_0_7
        ST_MFG_0_2_0_7
        ST_MFG_0_2_1_7
        ST_MFG_1_2_1_7
        ST_MFG_0_1_2_4
        ST_MFG_0_1_3_1
        ST_MFG_1_1_3_1
        ST_MFG_0_1_3_2
        ST_MFG_1_1_3_2
        ST_MFG_0_1_3_4
        ST_MFG_1_1_3_4
        ST_MFG_0_1_3_5
        ST_MFG_1_1_3_5
        ST_MFG_0_2_3_7
        ST_MFG_1_2_3_7
        ST_MFG_0_1_4_0
        ST_MFG_1_1_4_0
        ST_MFG_0_2_4_7
        ST_MFG_1_2_4_7
        ST_MFG_0_2_5_
### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}2
        ST_MFG_1_2_5_2
        ST_MFG_0_2_5_7
        ST_MFG_1_2_5_7
        ST_MFG_0_1_6_0
        ST_MFG_1_1_6_0
        ST_MFG_0_2_6_7
        ST_MFG_1_2_6_7

        ST_MFG_0_1_7_0
        ST_MFG_1_1_7_0
        ST_MFG_0_2_7_0
        ST_MFG_1_2_7_0

        ST_MFG_0_1_7_1
        ST_MFG_1_1_7_1
        ST_MFG_0_1_7_2
        ST_MFG_1_1_7_2
        ST_MFG_0_1_7_4
        ST_MFG_1_1_7_4
        ST_MFG_0_1_7_5
        ST_MFG_1_1_7_5
        ST_MFG_0_1_7_6
        ST_MFG_1_1_7_6
        ST_MFG_0_2_0_2
        ST_MFG_1_2_0_2
        ST_MFG_0_1_7_0

    )
    
    read -p "STDOUT? Prefer TABLE ST_MFG_[FGREV{0..1}]_[CM{1..2}]_[FC{0..7}]_[GCZ{0..7}] continue : ENTER, NO : ^C"

    for item in ${arr_mfg[@]}; do
        eval "echo -en \"\$${item} vsdfuiytu ${NORMAL}\""
        eval "echo -n ${item} - "
        eval "echo \$${item}"

    done

    read -pr "STDOUT? FULL TABLE ST_MFG_[FGREV{0..1}]_[CM{1..2}]_[FC{0..7}]_[GCZ{0..7}] continue : ENTER, NO : ^C"

    for gcn in {0..7}; do
        for fc in {0..7}; do

            eval "echo -en \"\$CM_1\$FC_${fc}\$GCN_${gcn} vsdfuiytu \$CM_0 \""
            eval "echo -n ST_MFG_0_1_${fc}_${gcn} - CM_1 FC_${fc} GCN_${gcn} - "
            eval "echo \$ST_MFG_0_1_${fc}_${gcn} == \$CM_1 \$FC_${fc} \$GCN_${gcn}"
            eval "echo -en \"\$FGREV\$CM_1\$FC_${fc}\$GCN_${gcn} vsdfuiytu \$CM_0 \""
            eval "echo -n ST_MFG_1_1_${fc}_${gcn} - FGREV CM_1 FC_${fc} GCN_${gcn} - "
            eval "echo \$ST_MFG_1_1_${fc}_${gcn} == \$FGREV \$CM_1 \$FC_${fc} \$GCN_${gcn}"

            eval "echo -en \"\$CM_2\$FC_${fc}\$GCN_${gcn} vsdfuiytu \$CM_0 \""
            eval "echo -n ST_MFG_0_2_${fc}_${gcn} - CM_2 FC_${fc} GCN_${gcn} - "
            eval "echo \$ST_MFG_0_2_${fc}_${gcn} == \$CM_2 \$FC_${fc} \$GCN_${gcn}"
            eval "echo -en \"\$FGREV\$CM_2\$FC_${fc}\$GCN_${gcn} vsdfuiytu \$CM_0 \""
            eval "echo -n ST_MFG_1_2_${fc}_${gcn} - FGREV CM_2 FC_${fc} GCN_${gcn} - "
            eval "echo \$ST_MFG_1_2_${fc}_${gcn} == \$FGREV \$CM_2 \$FC_${fc} \$GCN_${gcn}"

            echo

        done
    done

    #* ${HOME}.d/.rc.d/.st.rc.d/.st.d

    #? ----- END _color2e body -----

    cd $PPWD
    return 0

}


