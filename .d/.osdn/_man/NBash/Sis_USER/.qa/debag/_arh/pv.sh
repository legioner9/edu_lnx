#!/bin/bash
pv() {

    s="$1"
    echo "$s"
    i=0
    IFS=$'#'
    
    for item in s; do
        echo "$i  $item"

        _ret_["$i"]="$item"
        i=$((i + 1))
    done

}

pv "/"
