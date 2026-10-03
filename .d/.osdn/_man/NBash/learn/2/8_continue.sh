#!/bin/bash

for var in 1 2 5 7 9 11 58; do
    if [ $var -gt 5 ]&&[ $var -lt 20 ];then continue;fi
    echo "$var"
done