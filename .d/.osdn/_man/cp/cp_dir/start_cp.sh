#!/bin/bash

#. "$HOME/.bashrc"

filename=~/rpo/edu_lnx/.d/.osdn/_man/cp/cp_dir/start_cp.sh

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
rdir="$(l_01_prs_f -d $filename)"
gname="$(l_01_prs_f -n $filename)" # name without .ext
cd "$(l_01_prs_f -d $filename)" || l_00_echo_info "$(l_01_prs_f -d $filename) not found"
#
export _edeb=echo_$gname
export echo_$gname=0
#
export _debug=debug_$gname
export debug_$gname=0
#
garg_ $gname $@ 1>/dev/null
#
echo ${!_edeb} "cntl echo_deb_ mode in $gname"
if [ -n ${!_debug} ] && [ ${!_debug} -eq 1 ]; then
echo "DEBUG MODE in $gname"
fi
#{header}

#----------------------------------------------------------------------
#-------------------------------------
#-------------------------------

# rm -rfv dir_dist/0 dir_dist/.a dir_dist/a
# cp -a dir_src/. dir_dist
cp -rfv dir_src/* dir_dist

#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------


cd "$idir"

unset filename
