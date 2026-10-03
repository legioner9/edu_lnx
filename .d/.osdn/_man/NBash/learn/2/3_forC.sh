#!/bin/bash

# for ((i=0;i<2;i++)) {
#     printf "number is %d\n" "$i"
# }

arr=(1 3 5)
ind=${!arr[@]}

for ((i=0;i<${#arr[@]};i++)){

    echo -e "${GREEN}\${arr[i]} = ${arr[i]}${NORMAL}" #print variable

}