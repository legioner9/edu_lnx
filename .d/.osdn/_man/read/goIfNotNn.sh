#!/bin/bash

read -n 1 -p "Push master upstream? [Y/n] " reply
if [ "$reply" != "" ]; then echo; fi
if [ "$reply" = "${reply#[Nn]}" ]; then
    echo "Do)))"
fi
