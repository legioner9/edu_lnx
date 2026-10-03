#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/NBash/themes/arrays/as_args.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

arg_2_arr() {
    echo -e "CYAN---arg_2_arr()---NORMAL" #started functions
    
    declare -a argv=("${@}")                           # All arguments in one big array
    declare -i len_1=${argv[0]}                        # Length of first array passad
    declare -a arr_1=("${argv[@]:1:len_1}")           # First array
    declare -i len_2=${argv[(len_1 + 1)]}              # Length of second array passad
    declare -a arr_2=("${argv[@]:(len_1 + 2):len_2}") # Second array
    declare -i totlen=${#argv[@]}                      # Length of argv array (len_1+len_2+2)
    
    # Show passed arrays
    echo -en "arr_1: "
    echo "${arr_1[@]}"
    echo -en "arr_2: "
    echo "${arr_2[@]}"
    
    #-------------------------------------------------
    
    
    
    
    
    #-------------------------------------------------
    
    
    
    export _arg_2_arr_ # return function
    
}

# export arg_2_arr

# arr_1=("1" "2" "3" "8")

# arr_2=("1" "2" "5" "7")

# arg_2_arr ${#arr_1[@]} ${arr_1[@]} ${#arr_2[@]} ${arr_2[@]}

# echo -en "_arg_2_arr_: "

# unset _arg_2_arr_

# unset filename
# unset arr_1
# unset arr_2

arg_var_arr(){
    echo -e "CYAN---arg_var_arr()---NORMAL" #started functions
    
    declare -a argv=("${@}")                           # All arguments in one big array
    declare var=${argv[0]}                        # Length of first array passad
    declare -a arr=("${argv[@]:1}")           # First array
    
    # Show passed arrays
    echo -en "var: "
    echo "$var"
    echo -en "arr: "
    echo "${arr[@]}"
    
    #-------------------------------------------------
    
    
    
    
    
    #-------------------------------------------------
    
    
    
    export _arg_var_arr_ # return function
    
}

# export arg_var_arr

# var="1"

# arr=("1" "2" "5" "7")

# arg_var_arr "var" "${arr[@]}"

unset filename