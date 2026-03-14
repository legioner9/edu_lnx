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

