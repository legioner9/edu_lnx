#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/time_conditions/if_not_exist_args/if_not_exist_args.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

# copy="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/time_conditions/if_not_exist_args/copy"
cd ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/time_conditions/if_not_exist_args

if [ copy -nt orig ]; then
    echo -e "${BLUE}---be copied---${NORMAL}" #sistem info mesage
    cp orig copy
fi

unset filename
