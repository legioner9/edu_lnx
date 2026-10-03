#!/bin/bash

p=$(pwd) #p="/home/st"'
IFS=/ read -a a <<< $p #a=([0]="" [1]="home" [2]="st")'

echo "${a[1]}"
echo "${a[2]}"

echo $(basename $(dirname "$p")) # выведет строку "Account"
echo $(basename $(dirname $(dirname "$p"))) # выведет строку "Date_mgn4"
