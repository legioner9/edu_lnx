#!/bin/bash

cd ${PATH_CURR_REPO}/NBash/_man/sed/del_all_substring || plt_exit "EXEC_FAIL : cd ${PATH_CURR_REPO}/NBash/_man/sed/del_all_substring"
cp _fd.deb fd.deb
sed -i 's/#!55%//g' fd.deb