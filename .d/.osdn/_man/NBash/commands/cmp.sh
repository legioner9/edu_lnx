#!/bin/bash

if cmp a b &> /dev/null  # Подавление вывода.
then echo "Файлы a и b идентичны."
else echo "Файлы a и b имеют различия."
fi
