#!/bin/bash
# reassign-stdout.sh

LOGFILE=logfile.txt

exec 6>&1 # Связать дескр. #6 со stdout.
# Сохраняя stdout.

exec >$LOGFILE # stdout замещается файлом "logfile.txt".

# ----------------------------------------------------------- #
# Весь вывод от команд, в данном блоке, записывается в файл $LOGFILE.

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

exec 1>&6 6>&- # Восстановить stdout и закрыть дескр. #6.

echo
echo "== stdout восстановлено в значение по-умолчанию == "
echo
ls -al
echo
