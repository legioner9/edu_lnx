#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location .stl.d/prc.d/boot_stl_fn.d

info_boot_stl_fn() {
    local FNN=${FUNCNAME[0]}
    echo -e "${BLUE}-------- $FNN: $* --------${NORMAL}"
}
