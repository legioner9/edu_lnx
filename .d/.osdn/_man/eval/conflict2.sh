#!/bin/bash

rands2e() {
    echo "rand_$(printf '%s' $(echo "$RANDOM" | md5sum) | cut -c 1-20)"
}

rand_ptr=$(rands2e)

eval ${rand_ptr1}=rand_name
eval ${rand_name}="my value"

echo ${!rand_name}