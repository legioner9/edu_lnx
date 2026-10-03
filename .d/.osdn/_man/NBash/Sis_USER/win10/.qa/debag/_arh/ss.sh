#!/bin/bash

ladd() {

   tmp="/home/st/.qa/tmp/ls1"
   a="$1"

   ls "$1" >"$tmp"

   # IFS=$'\n'
   i=0
   for item in "$(cat "$tmp")"; do
      arr["$i"]="$item"
      echo "$i ${arr["$i"]}"
   done

}

ladd "/home/st/.qa/lib"

# echo "${arr[@]}"


