#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/fiches_constants/SECONDS.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

TIME_LIMIT=10
INTERVAL=1

echo
echo "Для прерывания работы сценария, ранее чем через $TIME_LIMIT секунд, нажмите Control-C."
echo

while [ "$SECONDS" -le "$TIME_LIMIT" ]; do

    if [ "$SECONDS" -eq 1 ]; then
        units=second
    else
        units=seconds
    fi

    echo "Сценарий отработал $SECONDS $units."
    #  В случае перегруженности системы, скрипт может перескакивать через отдельные
    #+  значения счетчика
    sleep $INTERVAL
done

echo -e "\a" # Сигнал!

unset filename
