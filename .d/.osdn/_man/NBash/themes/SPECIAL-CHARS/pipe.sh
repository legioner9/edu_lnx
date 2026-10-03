#!/bin/bash

echo ls -l | sh
#  Передает вывод "echo ls -l" команлному интерпретатору shell,
#+ тот же результат дает простая команда "ls -l".


cat ./*.lst | sort | uniq
# Объединяет все файлы ".lst", сортирует содержимое и удаляет повторяющиеся строки


cat $filename | grep $search_word

bash$ ls -l | ./uppercase.sh
# -RW-RW-R--    1 BOZO  BOZO       109 APR  7 19:49 1.TXT
#  -RW-RW-R--    1 BOZO  BOZO       109 APR 14 16:48 2.TXT
#  -RW-R--R--    1 BOZO  BOZO       725 APR 20 20:56 DATA-FILE

# Более элегантный вариант:
#   cd source-directory
#   tar cf - . | (cd ../target-directory; tar xzf -)
#
# cp -a /source/directory /dest     имеет тот же эффект.