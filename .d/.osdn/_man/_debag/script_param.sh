#!/bin/bash
echo
while [ -n "$1" ]
do
case "$1" in
-a) echo "Found the -a option"; param_a=$2 ;;
-b) echo "Found the -b option"; param_b=$2 ;;
-c) echo "Found the -c option"; param_c=$2 ;;
*) echo "$1 is not an option" ;;
esac
shift
done

echo $param-a $param_b $param_c

# ./script_param.sh -a param-a -b param_b -c param_c