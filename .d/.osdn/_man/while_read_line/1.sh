#!/bin/bash

# read -r : If this option is given, backslash does not act as an escape character
# for interrapt Ctrl+D
while read line; do
    echo "$line"
done
