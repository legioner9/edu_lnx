#!/bin/bash

for var in 1 2 5 ; do
    if [ $var -eq 5 ];then break;fi
    echo "$var"
done