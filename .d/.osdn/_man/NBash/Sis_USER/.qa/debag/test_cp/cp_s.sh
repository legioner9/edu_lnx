#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/.qa/debag/cp_s.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cd /home/st/.qa/debag/test_cp

# cp_s(){
#     echo -e "${CYAN}---cp_s()---${NORMAL}" #started functions
    
#     if ! [ -e "$1" ]; then
#         # fons not exist
#         qq_exit "fons = $1 not exist" "$3" "$4"
#     fi
    
#     if [ -e "$2" ]; then
#         # finis exist
#         echo -e "${BLUE}---"finis = $2 exist and be deleted"---${NORMAL}" #sistem info mesage
#         rm -fr "$2"
#     fi
    
    
#     if cp -fr "$1" "$2"     # ← see 'man test' for available unary and binary operators.
#     then
#         echo -e "${BLUE}---cp -fr "$1" "$2" succ))---${NORMAL}" #sistem info mesage
#     else
#         echo -e "${BLUE}---cp -fr "$1" "$2" defe((---${NORMAL}" #sistem info mesage
#         qq_pause "cp -fr defe((" "$3" "$4"
        
#     fi
    
# }

# export cp_s

# cp_h(){
#     echo -e "${CYAN}---cp_h()---${NORMAL}" #started functions
    
#     if ! [ -e "$1" ]; then
#         # fons not exist
#         qq_exit "fons = $1 not exist" "$3" "$4"
#     fi
    
#     if [ -e "$2" ]; then
#         # finis exist
#         echo -e "${BLUE}---"finis = $2 exist and be deleted"---${NORMAL}" #sistem info mesage
#         rm -fr "$2"
#     fi
    
    
#     if cp -fr "$1" "$2"     # ← see 'man test' for available unary and binary operators.
#     then
#         echo -e "${BLUE}---cp -fr "$1" "$2" succ))---${NORMAL}" #sistem info mesage
#     else
#         echo -e "${BLUE}---cp -fr "$1" "$2" defe((---${NORMAL}" #sistem info mesage
#         qq_exit "cp -fr defe((" "$3" "$4"
        
#     fi
    
# }

# export cp_h

cp_rm_s dir/a1 dir/b "$filename" "$LINENO"

unset filename

