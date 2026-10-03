#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/tar/cr_tar.sh"

echo -e "${HLIGHT}---start file://$filename with args: $@ ---${NORMAL}" # start file

# idir=$(pwd)
# rdir="$(prs_f -d $filename)"
# gname="$(prs_f -n $filename)" # name without .ext
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# export _edeb=echo_$gname
# export echo_$gname=0

# export _debug=debug_$gname
# export debug_$gname=0

# garg_ $gname $@ 1>/dev/null

# echo_deb_ ${!_edeb} "cntl echo_deb_ mode in $gname"
# if [ -n ${!_debug} ] && [ ${!_debug} -eq 1 ]; then
#     echo "DEBUG MODE in $gname"
# fi

idir=$(pwd)
rdir="$(prs_f -d $filename)"
gname="$(prs_f -n $filename)" # name without .ext
cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
#
export _edeb=echo_$gname
export echo_$gname=0
#
export _debug=debug_$gname
export debug_$gname=0
#
garg_ $gname $@ 1>/dev/null
#
echo_deb_ ${!_edeb} "cntl echo_deb_ mode in $gname"
if [ -n ${!_debug} ] && [ ${!_debug} -eq 1 ]; then
    echo "DEBUG MODE in $gname"
fi
#{header}

#----------------------------------------------------------------------
#-------------------------------------
#-------------------------------
wrp_fifs1_ rm -fr ${rdir}/flow_1 -cd1 1>/dev/null
wrp_fifs1_ mkdir ${rdir}/flow_1 -nd1 1>/dev/null


wrp_fifs1_ cd ${rdir}/flow_1 -d1 1>/dev/null

echo -e "
that file
.ext" > file.ext

echo -e "${BLUE}--- tar -cvf arh.tar file.ext ---${NORMAL}" #sistem info mesage
tar -cvf arh.tar file.ext

echo -e "${BLUE}--- ls ---${NORMAL}" #sistem info mesage
ls

echo -e "${BLUE}--- tar -cvzf arh.tar.gz file.ext ---${NORMAL}" #sistem info mesage
tar -cvzf arh.tar.gz file.ext

echo -e "${BLUE}--- ls ---${NORMAL}" #sistem info mesage
ls

echo -e "${BLUE}--- wrp_fifs1_ rm ${rdir}/flow_1/file.ext -f1 1>/dev/null ---${NORMAL}" #sistem info mesage
wrp_fifs1_ rm ${rdir}/flow_1/file.ext -f1 1>/dev/null

echo -e "${BLUE}--- tar -xpvf arh.tar.gz ---${NORMAL}" #sistem info mesage
tar -xpvf arh.tar.gz

echo -e "${BLUE}--- ls ---${NORMAL}" #sistem info mesage
ls

echo -e "${BLUE}--- wrp_fifs1_ rm ${rdir}/flow_1/file.ext -f1 1>/dev/null ---${NORMAL}" #sistem info mesage
wrp_fifs1_ rm ${rdir}/flow_1/file.ext -f1 1>/dev/null

echo -e "${BLUE}--- tar -xpvzf arh.tar.gz ---${NORMAL}" #sistem info mesage
tar -xpvzf arh.tar.gz

echo -e "${BLUE}--- ls ---${NORMAL}" #sistem info mesage
ls

# ↑ Pay attention to the user who made the tarfile you want to extract. If you had to "sudo" to make it, then it is owned by "root", and you need to "sudo" to extract it - otherwise "tar" will inadvertently make your current user the owner of all of the files, ruining the permissions in the process!



#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
