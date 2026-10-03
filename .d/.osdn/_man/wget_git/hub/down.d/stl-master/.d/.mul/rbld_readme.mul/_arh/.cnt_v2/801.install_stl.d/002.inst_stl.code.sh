#!/bin/bash

# THIS file (demo version) install stl for user

read -rp "Enter full path to dir with for clone repo st_rc_d :" PATH_TO_CLONE

cd "${PATH_TO_CLONE}" || {
    echo "in file: inst_st_rc_d.sh : NOTDIR : ${PATH_TO_CLONE} : return 1" >&2
    return 1
}

git clone git@gitflic.ru:legioner9/st_rc_d.git

cp "${PATH_TO_CLONE}"/st_rc_d/.d/.zip/.d.zip "${HOME}"

unzip .d.zip

if ! grep -F 'if [[ -f ~/.d/.rc.d/.st.rc.d/.st.rc ]]; then' <~/.bashrc; then
    echo 'if [[ -f ~/.d/.rc.d/.st.rc.d/.st.rc ]]; then if ! . ~/.d/.rc.d/.st.rc.d/.st.rc ; then echo "in ~/.bashrc : FAIL . ~/.d/.rc.d/.st.rc.d/.st.rc : return 1" >&2;return 1;fi fi' >>~/.bashrc
fi

bash