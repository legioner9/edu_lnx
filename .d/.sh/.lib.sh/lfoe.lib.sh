#!/bin/bash

# aer="aer_foe"
aer="edu_lnx"

echo "start lfoe.lib.sh in $aer"

lfoe_is_diff_orign_master(){
    git diff master origin/master || {
        echo "master diff origin, return 0"
        return 0
    }
    return 1
}

lfoe_is_fn(){
    [[ $(type -t "$1") == "function" ]] || return 1
    return 0
}

lfoe_dfn_os2e(){
    UNAME=$( command -v uname)
    
    case $( "${UNAME}" | tr '[:upper:]' '[:lower:]') in
        linux*)
            printf 'linux\n'
        ;;
        darwin*)
            printf 'darwin\n'
        ;;
        msys*|cygwin*|mingw*)
            # or possible 'bash on windows'
            printf 'windows\n'
        ;;
        nt|win*)
            printf 'windows\n'
        ;;
        *)
            printf 'unknown\n'
        ;;
    esac
    return 0
}

lfoe_this_dir_git2e(){
    git rev-parse --show-toplevel || {
        echo -e "${ECHO_RET1} EXEC : 'git rev-parse --show-toplevel' in $(pwd), 'RESUME :: $(pwd) IS_NOT git dir' return 1${NRM}" >&2
        return 1
    }
}

lfoe_gig_sh(){
    local arg1="$1"
    local arg2="$2"
    
    [[ "$arg1" != "-h" ]] || {
        echo -e "
        lfoe_gig_sh :: create \$1 file in \$2 from ${HOME}/edu_lnx/.d/.sh/.lib.sh/.dta/.tml/sh1.tml
        \$1 dir for file
        \$2 file name with .sh
        "
        return 0
    }
    
    [[ -d "$arg1" ]] || {
        echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  NOT_DIR : 'arg1=$arg1' :: root dir for .sh file , return 1${NRM}" >&2
        return 1
    }
    
    [[ -n "$arg2" ]] || {
        echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO}  IS_EMPTY : 'arg2=$arg2' file name , return 1${NRM}" >&2
        return 1
    }
    
    local tml_pth=${HOME}/edu_lnx/.d/.sh/.lib.sh/.dta/.tml/sh1.tml
    local fl_nm="$arg1"/"$arg2"
    local fn_nm="fn_$(l_01_rnd2e)"

    if [[ ! -f "${fl_nm}" ]] ;then
cp $tml_pth $fn_nm

    l_02_s2f "{fl_nm}" "${fl_nm}" "${fl_nm}"
    
}

