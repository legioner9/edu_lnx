#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/NBash/main_fiches/item_in_arr_search_in_other.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

    unset _f2a_
    f2a "$PATH_FN/_config/mane.tag"
    
    PS3="eligendi actiones: "
    
    select item in "${_f2a_[@]}";do
        
        adds=$item
        break
        
    done
    
    unset _f2a_
    f2a "$PATH_FN/dir_kk_/_kk_/_config/mane_kk_.tag"
    
    echo -e "${GREEN}\$adds = $adds${NORMAL}" #print variable
    echo -e "${GREEN}\${_f2a_[@]} = ${_f2a_[*]}${NORMAL}" #print variable
    
    for item in "${_f2a_[@]}" ; do
        echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        if [ $item = $adds ];then
            # qq_pause "${BLUE}---$adds allready in tags---${NORMAL}"
            flag="false"
            break
        fi
    done
    
    if [ -z $flag ];then
        echo -e "${BLUE}---NOT Found---${NORMAL}" #sistem info mesage
        qq_pause "${BLUE}---$adds add to tags mane_kk_.tag?---${NORMAL}"
    else
        echo -e "${BLUE}---find---${NORMAL}" #sistem info mesage
        qq_pause "${BLUE}---$adds allready in tags---${NORMAL}"
        echo "bye)))"
    fi

unset filename