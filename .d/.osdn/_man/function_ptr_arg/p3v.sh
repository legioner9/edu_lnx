#!/usr/bin/env bash

ptr="one"

ptr_treat(){

    treats_value=$(eval echo \"\$$1 treating\")
    eval "$1=\"$treats_value\""

}

ptr_treat ptr

echo $ptr