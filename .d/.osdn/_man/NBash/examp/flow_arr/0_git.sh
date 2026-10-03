#!/bin/bash

fd2a() {
    IFS=$1
    cat -ETv <<<"$IFS"
    i=0
    for item in $(cat "$2"); do

        # echo $item
        fs=${item:0:1}
        if [ "$fs" != "#" ]; then
            _fd2a_[i]="$item"
            ((i++))
        fi

    done

    export _fd2a_

}

fd2a '\n' "/home/st/ProjectRepo/_repo/communis/NBash/examp/flow_arr/dir_1/.gitid"

echo -e "${_fd2a_[@]}"
