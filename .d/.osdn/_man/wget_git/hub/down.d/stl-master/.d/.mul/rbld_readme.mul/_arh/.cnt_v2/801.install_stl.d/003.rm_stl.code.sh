#!/bin/bash

# THIS file (demo version) delele stl for user

read -rp "Enter full path to dir with for clone repo st_rc_d :" PATH_TO_CLONE

cd "${PATH_TO_CLONE}" || {
    echo "in file: rm_st_rc_d.sh , line=${LINENO} : NOTDIR : ${PATH_TO_CLONE} : return 1" >&2
    return 1
}

rm -rf st_rc_d || {
    echo "in file: rm_st_rc_d.sh , line=${LINENO} : FAILEXEC : 'rm -rf st_rc_d' : be continue"
    read -rp "Delete ${PATH_TO_CLONE}/st_rc_d : Enter to continue"
}

read -rp "Delete from ~/.bashrc code \
starting with 'if [[ -f ~/.d/.rc.d/.st.rc.d/.st.rc ]]; then' \
and restart you shell : \
Enter to continue"

