#!/bin/bash

file="https://gitflic.ru/project/legioner9/stl/blob/raw?file=.d%2F.stl.d%2F.stldrc"
# dir="https://gitflic.ru/project/legioner9/stl/blob/raw?file=.d%2F.stl.d"
# dir="https://gitflic.ru/project/legioner9/stl/file?file=.d%2F.stl.d&branch=master"
dir="https://gitflic.ru/project/legioner9/stl/file/downloadAll?branch=master&format=zip"

# curl $dir
curl --output FILE.zip $dir