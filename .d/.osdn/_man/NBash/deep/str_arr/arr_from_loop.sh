#!/bin/bash

rm_comment() {
    IFS=$'\n'
    i=0
    echo "$i" "$1"
    for namerepo in $(cat "$1"); do
        
        fs=${namerepo:0:1}
        if [ "$fs" != "#" ]; then
            _rm_comment_[i]="$namerepo"
        fi
        
    done
}

rm_comment "$HOME"/.gitrepo

echo _rm_comment_
