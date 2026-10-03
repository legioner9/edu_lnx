#!/bin/bash

echo "a = $a"           # Прямая ссылка.

echo "Now a = ${!a}"    # Косвенная ссылка.
# Форма записи ${!variable} намного удобнее старой "eval var1=\$$var2"


Внутренние переменные Bash, связанные с историей команд:

$HISTCMD

$HISTCONTROL

$HISTIGNORE

$HISTFILE

$HISTFILESIZE

$HISTSIZE

!!

!$

!#

!N

!-N

!STRING

!?STRING?

^STRING^string^