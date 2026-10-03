#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/.qa/lib/1_ini.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#upgit

unset filename
##

# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

# \033[0m все атрибуты по умолчанию
# \033[1m жирный шрифт (интенсивный цвет)
# \033[2m полу яркий цвет (тёмно-серый, независимо от цвета)
# \033[4m подчеркивание
# \033[5m мигающий
# \033[7m реверсия (знаки приобретают цвет фона, а фон -- цвет знаков)

# \033[22m установить нормальную интенсивность
# \033[24m отменить подчеркивание
# \033[25m отменить мигание
# \033[27m отменить реверсию

# \033[30 чёрный цвет знаков
# \033[31 красный цвет знаков
# \033[32 зелёный цвет знаков
# \033[33 желтый цвет знаков
# \033[34 синий цвет знаков
# \033[35 фиолетовый цвет знаков
# \033[36 цвет морской волны знаков
# \033[37 серый цвет знаков

# \033[40 чёрный цвет фона
# \033[41 красный цвет фона
# \033[42 зелёный цвет фона
# \033[43 желтый цвет фона
# \033[44 синий цвет фона
# \033[45 фиолетовый цвет фона
# \033[46 цвет морской волны фона
# \033[47 серый цвет фона

INVER='\033[33;5;7m' # ${INVER}# инверсия
MIG='\e[41m'         # ${MIG}# мигание
BLACK='\033[0;30m'   # ${BLACK} # чёрный цвет знаков
RED='\033[0;31m'     # ${RED} # красный цвет знаков
GREEN='\033[0;32m'   # ${GREEN} # зелёный цвет знаков
YELLOW='\033[0;33m'  # ${YELLOW} # желтый цвет знаков
BLUE='\033[0;34m'    # ${BLUE} # синий цвет знаков
MAGENTA='\033[0;35m' # ${MAGENTA} # фиолетовый цвет знаков
CYAN='\033[0;36m'    # ${CYAN} # цвет морской волны знаков
GRAY='\033[0;37m'    # ${GRAY} # серый цвет знаков

BGBLACK='\033[40m'   # ${BGBLACK}
BGRED='\033[41m'     # ${BGRED}
BGGREEN='\033[42m'   # ${BGGREEN}
BGBROWN='\033[43m'   # ${BGBROWN}
BGBLUE='\033[44m'    # ${BGBLUE}
BGMAGENTA='\033[45m' # ${BGMAGENTA}
BGCYAN='\033[46m'    # ${BGCYAN}
BGGRAY='\033[47m'    # ${BGGRAY}
BGDEF='\033[49m'     # ${BGDEF}

HLIGHT='\033[1m' # ${HLIGHT} жирный шрифт (интенсивный цвет)
ULINE='\033[4m'  # ${ULINE} подчеркивание
LLIGHT='\033[2m' # ${LLIGHT} полу яркий цвет (тёмно-серый, независимо от цвета)

NORMAL='\033[0m' # ${NORMAL} # все атрибуты по умолчанию

# tput sgr0 # Возврат цвета в "нормальное" состояние

f2a() {
    
    # echo -e "${BLUE}---f2a()---${NORMAL}"
    
    IFS=$IIFS
    
    # cat -ETv <<<"$IFS"
    i=0
    # cat "$1"
    for item in $(cat "$1"); do
        
        # echo $item
        fs=${item:0:1}
        if [ "$fs" != "#" ]; then
            _f2a_[i]="$item"
            ((i++))
        fi
        
    done
    
    unset item
    unset i
    
    export _f2a_
    
}

# f2a "/home/st/ProjectRepo/_repo/communis/NBash/examp/flow_arr/dir_1/a"

export f2a

# echo "${_f2a_[@]}"

# v_0=${_f2a_[0]}
# v_1=${_f2a_[1]}

s2a() {
    
    #echo -e "${BLUE}---s2a()---${NORMAL}"
    
    IFS=$1
    
    # cat -ETv <<<"$IFS"
    i=0
    for item in $2; do
        
        _s2a_[i]="$item"
        ((i++))
        
    done
    
    unset item
    unset i
    
    export _s2a_
    
    IFS=$IIFS
    
}

export s2a

# s2a ';' "$v_0"

mkdir_rm() {
    
    echo -e "${CYAN}---mkdir_path() \$path = $1---${NORMAL}" #started functions
    
    if [ -d "$1" ]; then
        
        echo -e "${BLUE}---dir \$path $1 exist remove and create that---${NORMAL}"
        
        rm -fr "$1"
        
    else
        echo -e "${BLUE}---dir \$path $1 not exist create that---${NORMAL}"
        
    fi
    
    mkdir "$1"
    
}

export mkdir_path

e_exer() {                                     #$1 error message
    echo -e "${CYAN}---e_exer()---${NORMAL}"   #started functions
    echo -e "${RED}---message: $1---${NORMAL}" #exit
    echo -e "${RED}---file: $2---${NORMAL}"    #exit 1
    echo -e "${RED}---line: $3---${NORMAL}"    #exit 1
    read -p "Press enter to continue and exit 1"
    exit 1
}

export e_exer

rr() {
    . ~/.bashrc
}

export rr

pause() {
    read -p "Press enter to continue or ^C for interrapt"
}

export rpp

f2a_clear() {
    
    # echo -e "${BLUE}---f2a()---${NORMAL}"
    
    IFS=$IIFS
    
    # cat -ETv <<<"$IFS"
    i=0
    # cat "$1"
    for item in $(cat "$1"); do
        
        # echo $item
        # fs=${item:0:1}
        # if [ "$fs" != "#" ]; then
        _f2a_clear_[i]="$item"
        ((i++))
        # fi
        
    done
    
    unset item
    unset i
    
    export _f2a_clear_
    
}

export f2a_clear

qq_point() {
    
    echo -e "${RED}---message: $1---${NORMAL}"
    echo -e "${RED}---file: $2---${NORMAL}"
    echo -e "${RED}---line: $3---${NORMAL}"
    
}

export qq_point

qq_pause() {
    echo -e "${CYAN}---qq_pause()---${NORMAL}" #started functions
    qq_point "$1" "$2" "$3"
    
    read -p "Press enter to continue or ^C for interrapt"
    
}

qq_exit() {
    echo -e "${CYAN}---qq_exit()---${NORMAL}" #started functions
    qq_point "$1" "$2" "$3"
    
    read -p "Press enter to exit 1 or ^C for interrapt"
    
    exit 1
    
}

export qq_pause

# cp_s(){

# }



