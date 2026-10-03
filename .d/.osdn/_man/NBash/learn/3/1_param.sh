#!/bin/bash

echo "file: $0"
echo "passed parameters: $#"
echo Last param is ${!#}
echo All parameters "$*" and "$@" iterable

if [ -n "$1" ];then echo "file: $0 param: $1"
else echo "file: $0 param not found"
fi