#!/bin/bash
echo all param: "$@"
shift
echo all param: "$@"
shift
echo all param: "$@"
shift
echo all param: "$*"
if [ -n "$*" ];then echo "$@" is exist;fi
if [ "$*" = "" ];then echo "$@" is empty;fi