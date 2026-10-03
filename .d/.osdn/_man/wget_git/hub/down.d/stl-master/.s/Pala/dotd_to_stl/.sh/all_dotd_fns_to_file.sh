#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${HOME}/REPOBARE/_repo/stl/.s/Pala/dotd_to_stl/.sh/all_dotd_fns_to_file.sh

# ENV: ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
: >${STL_D_PATH}/.s/Pala/dotd_to_stl/depends_in_dotd_fn.lst
for item in $(ls ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d); do

    echo ${item} >>${STL_D_PATH}/.s/Pala/dotd_to_stl/depends_in_dotd_fn.lst

done
