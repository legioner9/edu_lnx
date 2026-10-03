#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: pars \$1 path - stdout part
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh $1
    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_01_prs_f

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

local path=
local name_ext=
local name_ext2=
local name2_ext=

if [ "$1" = "-h" ]; then
    path="/the/path/_foo.ext2.txt"
    echo -e "${BLUE}------------------------ 
MAIN: ${FUNCNAME} ::
TAGS:
path=/the/path/_foo.txt        
\$(l_01_prs_f -d $path)   : $(l_01_prs_f -d $path) 
\$(l_01_prs_f -ne $path)  : $(l_01_prs_f -ne $path)   
\$(l_01_prs_f -n $path)   : $(l_01_prs_f -n $path)   
\$(l_01_prs_f -n2 $path)  : $(l_01_prs_f -n2 $path)   
\$(l_01_prs_f -e $path)   : $(l_01_prs_f -e $path)   
\$(l_01_prs_f -e2 $path)  : $(l_01_prs_f -e2 $path) 
\$(l_01_prs_f -pr $path)  : $(l_01_prs_f -pr $path)   
\$(l_01_prs_f -po $path)  : $(l_01_prs_f -po $path)    
----------------------${NORMAL}"
    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
else
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
fi

