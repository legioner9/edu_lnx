#!/bin/bash

in_fn_rtyjh234578() {

    local prc_boot_dir=${STL_D_PATH}/prc.d/boot_stl_fn.d

    local item=

    for item in $(ls ${prc_boot_dir}); do

        # if [ -f "${item}" ] && ! [ "_" = "${item:0:1}" ]; then
        if [ -f "${prc_boot_dir}/${item}" ]  && [ "_" != "${item:0:1}" ]; then

            echo "${item//_boot_stl_fn.sh/}"

        fi

    done

}

in_fn_rtyjh234578 $@
