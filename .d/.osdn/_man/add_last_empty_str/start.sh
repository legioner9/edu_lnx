#!/bin/bash

cd ${HOME}/REPOBARE/_repo/NBash/_man/add_last_empty_str

: >init.f
cat >init.f <<<"weqdfqwe"
cp init.f res.f
cat res.f
echo 'x'
[[ $(tail -c1 res.f) && -f file ]]&&echo ''>>res.f

cat res.f
echo 'x'
