#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/redirecting/rand_descr/rand_descr.sh"

echo -e "${HLIGHT}---start file://$filename with args: $@ ---${NORMAL}" # start file

# idir=$(pwd)
# rdir="$(prs_f -d $filename)"
# gname="$(prs_f -n $filename)" # name without .ext
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# export _edeb=echo_$gname
# export echo_$gname=0

# export _debug=debug_$gname
# export debug_$gname=0

# garg_ $gname $@ 1>/dev/null

# echo_deb_ ${!_edeb} "cntl echo_deb_ mode in $gname"
# if [ -n ${!_debug} ] && [ ${!_debug} -eq 1 ]; then
#     echo "DEBUG MODE in $gname"
# fi

idir=$(pwd)
rdir="$(prs_f -d $filename)"
gname="$(prs_f -n $filename)" # name without .ext
cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
#
export _edeb=echo_$gname
export echo_$gname=0
#
export _debug=debug_$gname
export debug_$gname=0
#
garg_ $gname $@ 1>/dev/null
#
echo_deb_ ${!_edeb} "cntl echo_deb_ mode in $gname"
if [ -n ${!_debug} ] && [ ${!_debug} -eq 1 ]; then
echo "DEBUG MODE in $gname"
fi
#{header}

#----------------------------------------------------------------------
#-------------------------------------
#-------------------------------

>logfile.txt
>logfile.txt
# descr=$(rand2e 1)
&2>>logfile_err.txt
descr=6
echo -e "${GREEN}\$descr = $descr${NORMAL}" #print variable

qq_pause

# eval exec ${descr}>&2           # Связать дескр. #descr со stdout.
exec ${descr}>&2
                    # Сохраняя stdout.
exec > $logfile     # stdout замещается файлом "logfile.txt".

# ----------------------------------------------------------- #
# Весь вывод от команд, в данном блоке, записывается в файл $logfile.
echo -n "Logfile: "
date
echo "-------------------------------------"
echo

echo "Вывод команды \"ls -al\""
echo
ls -al
echo
echo
echo "Вывод команды \"df\""
echo
df

# ----------------------------------------------------------- #

# eval exec 1>&${descr} ${descr}>&-      # Восстановить stdout и закрыть дескр. #6.
exec 1>&${descr} ${descr}>&-
echo
echo "== stdout восстановлено в значение по-умолчанию == "
echo
ls -al
echo

#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
