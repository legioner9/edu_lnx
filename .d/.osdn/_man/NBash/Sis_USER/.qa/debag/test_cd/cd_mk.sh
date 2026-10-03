#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/.qa/debag/cd_mk.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

# cd_mkdir_s(){
#     echo -e "${CYAN}---cd_mkdir_s()---${NORMAL}" #started functions
    
#     mkdir_rm_h "$1" "$2" "$3"
#     cd_s "$1" "$2" "$3"

# }

# export cd_mkdir_s

# cd_mkdir_h(){
#     echo -e "${CYAN}---cd_mkdir_h()---${NORMAL}" #started functions
    
#     mkdir_rm_h "$1" "$2" "$3"
#     cd_h "$1" "$2" "$3"

# }

# export cd_mkdir_s

cd_mkdir_s

unset filename