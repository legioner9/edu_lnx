#!/usr/bin/bash

fn_eargb43634hfdhnffvb(){
    
    local arg_1="$1"
    local arg_2="$2"
    
    local bn_dr=${HOME}/edu_lnx/.d/.osdn
    
    local en_all=
    local fl_all=
    
    for en_all in $(l_02_dr2e "$bn_dr");do

    echo -e "${ECHO_INFO}\$en_all=$en_all${NRM}"
        
        if  [[ -f "$en_all" ]];then
            if grep -q "$1" "$en_all" ;then
                
                echo -e "${ECHO_INFO}file://$en_all${NRM}"
                
                if [[ -n "$2" ]]; then
                    echo -e "${ECHO_CODE} grep -w --color=always $arg_1 $en_all${NRM}"
                    grep --color=always "$arg_1" "$en_all"
                    echo -e "${ECHO_CODE} grep -w --color=always $arg_2 $en_all${NRM}"
                    grep --color=always "$arg_2" "$en_all"
                else
                    echo -e "${ECHO_CODE} grep -w --color=always $arg_1 $en_all${NRM}"
                    grep --color=always "$arg_1" "$en_all"
                fi
            fi
        fi
        # for fl_all in $(l_02_dd2e)
    done
    
    unset arg_1
    unset arg_2
    
}

fn_eargb43634hfdhnffvb "$1" "$2"