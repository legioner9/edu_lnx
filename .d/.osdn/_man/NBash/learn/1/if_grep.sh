#!/bin/bash

user="st:"

if grep $user /etc/passwd; then
    echo "user $user exist"
fi
dsd