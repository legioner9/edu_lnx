#!/bin/bash

down_dir=$HOME/REPOBARE/_repo/NBash/_man/wget_git/hub/down.d
rm -r "$down_dir"

exec_file=$HOME/REPOBARE/_repo/NBash/_man/wget_git/hub/wget.sh

mkdir "$down_dir"
cd "$down_dir" || return 1
source "${exec_file}"
ls "$down_dir"
unzip master.zip 