#!/bin/bash

f2a "/home/st/ProjectRepo/_repo/communis/NBash/examp/flow_arr/dir_1/a"

echo "${_f2a_[@]}"

v_0=${_f2a_[0]}
v_1=${_f2a_[1]}

# s2a() {

#     IFS=$1

#     # cat -ETv <<<"$IFS"
#     i=0
#     for item in $2; do

#         _s2a_[i]="$item"
#         ((i++))

#     done

#     export _s2a_

# }

s2a ';' "$v_0"

echo "${_s2a_[@]}"

d_1=${_s2a_[0]}

s2a ':' "$d_1"

echo "${_s2a_[@]}"
