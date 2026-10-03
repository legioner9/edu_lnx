#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/.qa/debag/exit_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

qq_pause "message_for_pause" "$filename" "$LINENO"

qq_point "message_for_point" "$filename" "$LINENO"

qq_exit "message_for_exit" "$filename" "$LINENO"

echo -e "${BLUE}---contiue)))---${NORMAL}" #sistem info mesage

unset filename