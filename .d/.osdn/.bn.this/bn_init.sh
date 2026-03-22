#!/usr/bin/bash

fn_eargb43634hfdsdcahnffvb(){
    
    local arg_1="$1"
    local arg_2="$2"
    
    local bn_dr=${HOME}/edu_lnx/.d/.osdn
    
    local en_all=
    local fl_all=
    
    for en_all in $(l_02_dr2e "$bn_dr");do
        
        if  [[ -f "$en_all" ]];then
            if grep -q "$1" "$en_all" ;then
                
                echo -e "[$en_all]($en_all)"
                
                if [[ -n "$2" ]]; then
                    echo -e "grep $arg_1 $en_all"
                    grep "$arg_1" "$en_all"
                    echo -e "grep $arg_2 $en_all"
                    grep "$arg_2" "$en_all"
                else
                    echo -e "grep $arg_1 $en_all"
                    grep "$arg_1" "$en_all"
                fi
            fi
        fi
        # for fl_all in $(l_02_dd2e)
    done
    
    unset arg_1
    unset arg_2
    
}

fn_eargb43634hfdsdcahnffvb "$1" "$2"