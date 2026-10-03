#!/bin/bash

# read -p "see IFS"

idir_42434515=$(pwd)

if [ -f ~/.bash_aliases ]; then

    . ~/.bash_aliases

fi

#* file example inner text for ~/.bashrc  --------- START INNER ------------

bashrc_version_2() {
    [ -f ${HOME}/.bashrc.lib.conf ] || {
        echo '${HOME}/.d/.rc.d/.st.rc.d/.st.rc:${HOME}/.strc.use.flag:${HOME}/.strc.log'
        echo '${HOME}/REPOBARE/_repo/stl/.d/.stl.d:${HOME}/.stldrc.use.flag:${HOME}/.stldrc.log'
    }
}
#? SATRT bashrc version_2
#! bashrc_version_2

#* file example inner text for ~/.bashrc  --------- END INNER ------------

unset IFS

bashrc_version_1() {
    if [[ -f ${HOME}/.d/.rc.d/.st.rc.d/.st.rc ]]; then if ! . ${HOME}/.d/.rc.d/.st.rc.d/.st.rc &>${HOME}/.strc.log; then
        # if [[ -f ~/.d/.rc.d/.st.rc.d/.st.rc ]]; then if ! . ~/.d/.rc.d/.st.rc.d/.st.rc >/dev/null; then
        echo -e "in ${HOME}/.bashrc : FAIL . ${HOME}/.d/.rc.d/.st.rc.d/.st.rc
see file://${HOME}/.strc.log :
'cat ${HOME}/.strc.log'
remove this lib : 
'echo 0 > ${HOME}/.strc.use.flag' 
" >&2
    fi; fi

    #! define ${STL_D_PATH} get path to .stl.d <- ${HOME}/.stl_d_path [ default :: ${HOME}/REPOBARE/_repo/stl/.d/.stl.d ]

    [[ -f ${HOME}/.stl_d_path ]] || {
        echo '${HOME}/REPOBARE/_repo/stl/.d/.stl.d' >${HOME}/.stl_d_path
    }

    eval "STL_D_PATH=$(cat ${HOME}/.stl_d_path)"
    export STL_D_PATH

    #! entry point to boot stl
    if [ -f ${STL_D_PATH}/.stldrc ]; then if ! . ${STL_D_PATH}/.stldrc &>${HOME}/.stldrc.log; then
        echo -e "in ${HOME}/.bashrc : FAIL . ${STL_D_PATH}/.stldrc
see file://${HOME}/.stldrc.log :
'cat ${HOME}/.stldrc.log'
remove this lib : 
'echo 0 > ${HOME}/.stldrc.use.flag' 
" >&2
    fi; fi
}

#? SATRT bashrc version_1
bashrc_version_1

unset IFS

cd "${idir_42434515}" || echo "FAIL_EXEC: cd ${idir_42434515}"
