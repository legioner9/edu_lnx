#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/fiches/arr_prem_775.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

ERR=27
EXT=0

if [ $# -ne 1 ]; then
echo "Используйте: $0 <путь>"
exit $ERR
fi

if [ ! -d $1 ]; then
echo "Каталог $1 не существует"
exit $ERR
fi

temp=( $(find $1 -maxdepth 1 -type f) )

for i in "${temp[@]}"
do
perm=$(ls -l $i)
if [ $(expr ${perm:0:10} : "-rwxr-xr-x") -eq 10 ]; then
echo ${i##*/}
fi
done

exit $EXT

unset filename