#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/NBash/themes/arrays/comare.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

arr_1=("1" "2" "3" "8")

arr_2=("1" "2" "5" "7")

declare res

# 1)
echo "${arr1[@]}" "${arr2[@]}" | tr ' ' '\n' | sort | uniq -u

# 2)
if [ "${arr1[*]}" == "${arr2[*]}" ]; then echo 1; else echo 2; fi

# 3)
echo $arr1 > arr1
echo $arr2 | diff -q -s arr1 -


arr_1=("1" "2" "3" "8") # min

arr_2=("1" "2" "5" "7") # sub

arr_3=()
for i in "${arr_1[@]}"; do
    skip=
    for j in "${arr_2[@]}"; do
        [[ $i == $j ]] && { skip=1; break; }
    done
    [[ -n $skip ]] || arr_3+=("$i")
done

declare -p arr_3

echo "${arr_3[@]}" # 3 8

arr_1=("1" "2" ) # min

arr_2=("1" "2") # sub

arr_3=()
for i in "${arr_1[@]}"; do
    skip=
    for j in "${arr_2[@]}"; do
        [[ $i == $j ]] && { skip=1; break; }
    done
    [[ -n $skip ]] || arr_3+=("$i")
done

declare -p arr_3
echo 2
echo "${arr_3[@]}" # 3 8

unset filenamels