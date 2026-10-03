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
