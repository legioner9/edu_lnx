#!/bin/bash

dir=$(pwd)
echo "\$dir $dir"
v=4
v2=$((v + 32))
echo -e "v= $v,\nv2= $v2"

if  false
then echo "It works"
elif false
then
    echo "WTF?"
else
    echo "###"
fi