#!/bin/bash

arr=("a b" "c d"  "f g")

fn(){
    echo "$1"
    echo "$2"
}

fn "${arr[@]:1}"

