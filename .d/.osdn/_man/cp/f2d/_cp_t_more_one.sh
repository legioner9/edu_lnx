#!/bin/bash

file=/home/st/REPOBARE/_repo/NBash/_man/cp/f2d/fl
dir=/home/st/REPOBARE/_repo/NBash/_man/cp/f2d/dr

cp --backup=t ${file} ${dir}
ls ${dir}