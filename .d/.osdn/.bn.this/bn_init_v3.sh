#!/usr/bin/bash

fn_eargb43634hfdsdcahnffvb(){
    
    # local arg_1="$1"
    # local arg_2="$2"
    
    local bn_dr=${HOME}/edu_lnx/.d/.osdn
    
    local en_all=
    local str=
    
    for en_all in $(l_02_dr2e "$bn_dr");do
        
        # [[ -d "$en_all" ]] && echo "in dir :: $en_all"
        
        
        if  [[ -f "$en_all" ]];then
            # echo "file :: $en_all"
            if grep -q -f "${HOME}/edu_lnx/.d/.osdn/.bn.this/patternfile.lst" "$en_all" ;then
                
                echo -e "[$en_all]($en_all)"
                
                IFS=$'\n'
                for str in $(grep -f "${HOME}/edu_lnx/.d/.osdn/.bn.this/patternfile.lst" "$en_all");do
                    echo "$str"
                    echo ""
                done
            fi
        fi
        
    done
    
    
}

fn_eargb43634hfdsdcahnffvb "$1" "$2"