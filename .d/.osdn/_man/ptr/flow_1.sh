#!/bin/bash

wr_123412424313() {

    local ptr="erf+"
    fn() {
        echo "$1"
        eval val_ptr=\$"$1"
        echo "${val_ptr}"

        eval "$1"=\$"$1""+aerf"

    }

    fn ptr

    echo -e "${GREEN}\$ptr = $ptr${NORMAL}" #print variable

}

wr_123412424313
