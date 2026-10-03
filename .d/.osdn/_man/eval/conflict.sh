#!/bin/bash

rand_value=rand_$(printf '%s' $(echo "$RANDOM" | md5sum) | cut -c 1-20)

eval ${rand_value}="my_value"

echo ${!rand_value}



g1() {
    local value="g1"
    echo "from g1: ${value}"
}

g2() {
    value="g2"
    g1
    echo "from g2: ${value}"
}
value="global"
g2

l1() {
     value="l1"
    echo "from l1: ${value}"
}

l2() {
    value="l2"
    l1
    echo "from l2: ${value}"
}

value="global"
l2

value(){
    echo
}
