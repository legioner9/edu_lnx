#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/fiches_input_tst/1/simple_c_in/exec.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}
# echo "PD0 = $(pwd)"
PD="$(prs_f -d "$filename")"

c_to_h_ -u

c_src=${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib/lc_0.c
c_dist=$PD/lib/lc_0.c

if [ "$c_dist" -ot "$c_src" ]; then

    cp -u $(prs_f -d "$c_src")/*.* "$PD"/lib/

fi

cd "$PD" || qq_exit
make -f auto.mk
echo -e "${RED}--- start main.bexe ---${NORMAL}" #sistem info mesage
# exec 6<&0 
# exec < input
rm output
cat input | ./main.bexe > output



echo -e "${RED}--- end main.bexe ---${NORMAL}" #sistem info mesage
# make -f auto.mk clear

unset filename
