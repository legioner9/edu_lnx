#!/bin/bash
# IFS=$'\n'

# i=0

# for str in $(cat /home/st/ProjectRepo/_repo/communis/NBash/learn/2/dir_1/b); do

#     IFS=$'#'

#     for entry_1 in $str; do

#         # echo "$entry_1"
#         res[$i]="$entry_1"
#         ((i++))
#     done

# done

f2a() {
    # cat -ETv <<<"$IFS"
    i=0
    for item in $(cat "$1"); do

        echo $item
        fs=${item:0:1}
        if [ "$fs" != "#" ]; then
            _f2a_[i]="$item"
            ((i++))
        fi

    done

    #  export _f2a_

}

# f2a "/home/st/ProjectRepo/_repo/communis/NBash/examp/flow_arr/dir_1/a"

export f2a
