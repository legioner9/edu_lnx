#!/usr/bin/env bash

mes="Hello"
Hello="Goodbye"
Goodbye="WTF"

# echo ${mes} # Hello
p1=${mes}
echo "${p1}"
# echo ${!mes} # Goodbye
p2=$(eval echo \"\$${mes}\")
p2_=${!mes}
echo ${p2} ${p2_}
# eval echo \$${!mes} # WTF
p3=$(eval echo \"\$${p2}\")
p3_=${!p2}
echo ${p3} ${p3_}

new="Agane that!"

eval ${!mes}=\"${new}\"
echo ${!Hello}