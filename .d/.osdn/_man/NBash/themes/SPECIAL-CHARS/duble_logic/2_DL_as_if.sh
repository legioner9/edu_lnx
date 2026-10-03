#!/bin/bash

[[ $dryrun ]] && echo "Would delete file" || rm file


if [[ $dryrun ]]
then
  echo "Would delete file"
else
  rm file
fi