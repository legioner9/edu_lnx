#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/fiches_array/index_arr.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

array=(one two three four [5]=five)

echo "Array size: ${#array[*]}" # Выводим размер массива

echo "Array items:" # Выводим записи массива
for item in ${array[*]}; do
    printf "   %s\n" $item
done

echo "Array indexes:" # Выводим индексы массива
for index in ${!array[*]}; do
    printf "   %d\n" $index
done

echo "Array items and indexes:" # Выводим записи массива с их индексами
for index in ${!array[*]}; do
    printf "%4d: %s\n" $index ${array[$index]}
done

# *** BEGIN DEBUG BLOCK ***
last_cmd_arg=$_  # Запомнить.
v1="str"

echo "Строка $LINENO: переменная \"v1\" = $v1"
echo "Последний аргумент командной строки = $last_cmd_arg"
# *** END DEBUG BLOCK ***

unset filename
