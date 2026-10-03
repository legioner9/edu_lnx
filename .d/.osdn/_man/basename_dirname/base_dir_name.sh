#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/basename_dirname/base_dir_name.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

path=/the/path/_foo.txt

dir=$(dirname "$path") # -d # /the/path
name_ext="${path##*/}" # -ne # # _foo.txt
name="${name_ext%.*}" # -n ## _foo
ext="${name_ext##*.}" # -e ## txt
pre="${name_ext:0:1}" # -pr ## _
post="${name_ext:1}" # -po ## foo.txt

echo -e ""

echo "path=$path, dir=$dir, name_ext=$name_ext, name=$name, ext=$ext, pre=$pre, post=$post"


unset filename