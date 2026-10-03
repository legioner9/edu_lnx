#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/fiches_array/readarray_from_file.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

readarray rows < demo.txt                                           

for row in "${rows[@]}";do                                                      
  row_array=(${row})                                                            
  first=${row_array[0]}                                                         
  echo ${first}                                                                 
done 

# Пример, возьмем стандартную итерацию по куче строк (тут не особо важно из файла или stdin, но я для простоты беру миллион строк из файла):
while read -r line; do
    echo "$line changed" >> output.txt
done < 1m_lines.txt

# еперь используем массивы из баша:
readarray -t lines < 1m_lines.txt
for i in "${!lines[@]}"; do
    lines[$i]="${lines[$i]} changed"
done
printf "%s\n" "${lines[@]}" > output.txt

# в деле «башизмов» можете опробовать следующий код:
readarray -t lines < /tmp/1m_lines.txt
printf "%s changed\n" "${lines[@]}" > /tmp/output-bash1.txt

unset filename