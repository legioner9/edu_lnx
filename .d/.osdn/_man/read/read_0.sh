#!/bin/bash
unset errno
unset var

# read -p "Enter [1-3]" -t 1 -e -i 1 var || {
read -p "Enter [1-3]" -e -i 1 var || {
    errno=$?
    echo "time over"
}

echo
echo "$var"
echo "$errno"
