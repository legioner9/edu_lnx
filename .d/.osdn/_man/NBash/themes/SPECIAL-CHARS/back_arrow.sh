#!/bin/bash

File=/etc/fstab

{
read -r line1
read -r line2
} < $File


echo "Первая строка в $File :"
echo "$line1"
echo
echo "Вторая строка в $File :"
echo "$line2

<
меньше, в смысле величины ASCII-кодов

if [[ "$a" < "$b" ]]

if [ "$a" \< "$b" ]

Обратите внимание! Символ "<" необходимо экранировать внутри [ ].

>
больше, в смысле величины ASCII-кодов

if [[ "$a" > "$b" ]]

if [ "$a" \> "$b" ]

Обратите внимание! Символ ">" необходимо экранировать внутри [ ].

См. Пример 25-6 относительно применения этого оператора сравнения.

bash$ grep '\<the\>' textfile
This is the only instance of line 2.