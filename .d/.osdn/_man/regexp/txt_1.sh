#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_bash_/_bash_/_man/regexp/txt_1.sh" 

echo -e "${HLIGHT}---start file://$filename with args: $@ ---${NORMAL}" # start file

idir=$(pwd)
rdir="$(prs_f -d $filename)"
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


garg_ $(prs_f -n $filename) $@ 1>/dev/null
#----------------------------------------------------------------------
#-------------------------------------
#-------------------------------
echo -e "
https://www.opennet.ru/docs/RUS/bash_scripting_guide/c11895.html#REGEXREF

man grep
    NUM -A  :: Выведите NUM число строк завершающего контекста после совпадающих строк
    -a      :: Обработайте двоичный файл, как если бы он был текстовым
    NUM -B  :: Выведите NUM строки начального контекста перед соответствующими строками
    NUM -C  :: NUM -A -B
    -b      :: 
    --colour[=WHEN],        
        --color[=WHEN] 
            :: Surround the matching string with the marker find
            WHEN may be 'never', 'always', or 'auto'
    -c      :: Подавите обычный вывод; вместо этого выведите количество совпадающих строк для каждого входного файла
    -v      :: выведите количество НЕ совпадающих
    -D ACTION 
            :: If an input file is a device, FIFO or socket, use ACTION to process
    -d ACTION
            :: If an input file is a directory, use ACTION to process it
    -e PATTERN
            :: Use PATTERN as the pattern; useful to protect patterns beginning with "-"
    -F      :: Interpret PATTERN as a list of fixed strings
    -P      :: Interpret PATTERN as a Perl regular expression
    -f FILE :: Obtain patterns from FILE, one per line. The empty file contains zero patterns, and therefore matches nothing
    -H      :: Print the file name for each match
    -n      :: Prefix each line of output with the line number within its input file
    -o      :: Show only the part of a matching line that matches PATTERN
    --label=LABEL
            :: Displays input actually coming from standard input as input coming from file LABEL. This is especially useful for tools like zgrep, e.g., gzip -cd foo.gz |grep -H --label=foo something
    



. -- означает не менее одного любого символа, за исключением символа перевода строки ('\n')
    "13." будет означать 1133, 11333, но не 13 (отсутствуют дополнительные символы)
^ -- означает начало строки (иногда отрицание)
$ -- в конце регулярного выражения соответствует концу строки
[...] -- предназначены для задания подмножества символов
    "[^b-d]" соответствует любому символу, кроме символов из диапазона от b до d, включительно
    "[Yy][Ee][Ss]" соответствует словам yes, Yes, YES, yEs ...
\ -- служит для экранирования
\<...\> -- отмечают границы слова
    "\<the\>" соответствует слову "the", и не соответствует словам "them", "there"

    $ cat file.dat
        the one
        them
        two
    $ grep 'the' file.dat
        the one
        them
    $ grep '\<the\> file.dat
        the one

? -- означает, что предыдущий символ или регулярное выражение встречается 0 или 1 раз
+ -- указывает на то, что предыдущий символ или выражение встречается 1 или более раз
    $ echo a111b | grep 'a1\+b'
        a111b
    $ echo a112b | grep 'a1\+b'   
    $ 

\{ \} -- задают число вхождений предыдущего выражения
    $ echo 12345qwefe | grep '[1-5]\{5\}'
        12345qwefe
    $ echo 12345qwefe | grep '[1-5]\{6\}'
    $

| -- выполняет роль логического оператора "ИЛИ" в регулярных выражениях и служит для задания набора альтернатив
    $ cat file.dat
        read
        red
        rad
        rtey

    $ grep -C 0 'r\(e\|a\)' file_2.dat
        read
        red
        rad
    $ grep -C 0 'r(e|a)' file_2.dat
    $

    $ egrep -C 0 'r(e|a)' file_2.dat
        read
        red
        rad
    $ egrep -C 0 'r\(e\|a\)' file_2.dat
    $
    
    $ fgrep 'ra' file_2.dat 
        ra

\b - обозначает границу слова с пробелом
\B - не \b - обозначает что символ должен быть внутри слова, uxb но не Linux
\d - означает, что символ - цифра
\D - не \d - нецифровой символ
\n - символ перевода строки
\s - один из символов пробела, пробел, табуляция и так далее
\S - любой символ кроме пробела
\t - символ табуляции
\v - символ вертикальной табуляции
\w - любой буквенный символ, включая подчеркивание
\W - любой буквенный символ, кроме подчеркивания
\uXXX - символ Unicdoe

    $ grep '44' -b file_3.dat
        6:vdfretg44
        16:sdf44sders

    

"



#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------



cd "$idir"

unset filename