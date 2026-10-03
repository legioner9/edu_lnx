#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/.qa/lib/0_ini.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

# list: cp_s  cp_h  rm_s  rm_h  cp_rm_s  cp_rm_h  mkdir_rm_s  mkdir_rm_h  cd_s  cd_h  cd_mkdir_s cd_mkdir_h

cp_s(){
    echo -e "${CYAN}---cp_s()---${NORMAL}" #started functions
    
    if ! [ -e "$1" ]; then
        # fons not exist
        qq_exit "fons = $1 not exist" "$3" "$4"
    fi
    
    if cp -fr "$1" "$2"     # ← see 'man test' for available unary and binary operators.
    then
        echo -e "${BLUE}---cp -fr "$1" "$2" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---cp -fr "$1" "$2" defe((---${NORMAL}" #sistem info mesage
        qq_pause "message_for_pause" "$filename" "$LINENO" "cp -fr defe((" "$3" "$4"
    fi
}

export cp_s

cp_h(){
    echo -e "${CYAN}---cp_h()---${NORMAL}" #started functions
    
    if ! [ -e "$1" ]; then
        # fons not exist
        qq_exit "fons = $1 not exist" "$3" "$4"
    fi
    
    if cp -fr "$1" "$2"     # ← see 'man test' for available unary and binary operators.
    then
        echo -e "${BLUE}---cp -fr "$1" "$2" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---cp -fr "$1" "$2" defe((---${NORMAL}" #sistem info mesage
        qq_exit "message_for_pause" "$filename" "$LINENO" "cp -fr defe((" "$3" "$4"
    fi
}

export cp_h

rm_s(){
    echo -e "${CYAN}---rm_s()---${NORMAL}" #started functions
    
    if [ -d $1 ] ; then
        echo -e "${BLUE}---$1 exist---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---$1 not exist---${NORMAL}" #sistem info mesage
    fi
    
    if rm -fr "$1";then
        echo -e "${BLUE}---rm -fr "$1" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---rm -fr "$1" defe((---${NORMAL}" #sistem info mesage
        qq_pause "rm -fr $2 defe((" "$2" "$3"
    fi
}

export rm_s

rm_h(){
    echo -e "${CYAN}---rm_h()---${NORMAL}" #started functions
    
    if [ -d $1 ] ; then
        echo -e "${BLUE}---$1 exist---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---$1 not exist---${NORMAL}" #sistem info mesage
    fi
    
    if rm -fr "$1";then
        echo -e "${BLUE}---rm -fr "$1" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---rm -fr "$1" defe((---${NORMAL}" #sistem info mesage
        qq_exit "rm -fr $2 defe((" "$2" "$3"
    fi
}

export rm_h



cp_rm_s(){
    echo -e "${CYAN}---cp_s()---${NORMAL}" #started functions
    
    if [ -e "$2" ]; then
        # finis exist
        echo -e "${BLUE}---"finis = $2 exist and be deleted"---${NORMAL}" #sistem info mesage
        
        rm_h -fr "$2" "$3" "$4"
        
    fi
    
    cp_s "$1" "$2" "$3" "$4"
}

export cp_rm_s

cp_rm_h(){
    echo -e "${CYAN}---cp_h()---${NORMAL}" #started functions
    
    if [ -e "$2" ]; then
        # finis exist
        echo -e "${BLUE}---"finis = $2 exist and be deleted"---${NORMAL}" #sistem info mesage
        
        rm_h -fr "$2" "$3" "$4"
        
    fi
    
    cp_h "$1" "$2" "$3" "$4"
    
}

export cp_rm_h

mkdir_rm_s() {
    
    echo -e "${CYAN}---mkdir_rm_s() \$path = $1---${NORMAL}" #started functions
    
    if [ -d "$1" ]; then
        
        echo -e "${BLUE}---dir \$path $1 exist remove and create that---${NORMAL}"
        
        rm_h "$1" "$2" "$3"
        
    else
        echo -e "${BLUE}---dir \$path $1 not exist create that---${NORMAL}"
        
    fi
    
    if mkdir "$1"; then
        echo -e "${BLUE}---mkdir "$1" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---mkdir "$1" defe((---${NORMAL}" #sistem info mesage
        
        qq_pause "message_for_pause" "$2" "$3"
    fi
    
}

export mkdir_rm_s

mkdir_rm_h() {
    
    echo -e "${CYAN}---mkdir_rm_h() \$path = $1---${NORMAL}" #started functions
    
    if [ -d "$1" ]; then
        
        echo -e "${BLUE}---dir \$path $1 exist remove and create that---${NORMAL}"
        
        rm_h "$1" "$2" "$3"
        
    else
        echo -e "${BLUE}---dir \$path $1 not exist create that---${NORMAL}"
        
    fi
    
    if mkdir "$1"; then
        echo -e "${BLUE}---mkdir "$1" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---mkdir "$1" defe((---${NORMAL}" #sistem info mesage
        
        qq_exit "message_for_exit" "$2" "$3"
    fi
    
}

export mkdir_rm_h

cd_s(){
    echo -e "${CYAN}---cd_s()---${NORMAL}" #started functions
    
    if ! [ -e "$1" ]; then
        # fons not exist
        qq_exit "fons = $1 not exist" "$3" "$4"
    fi
    
    if cd "$1"     # ← see 'man test' for available unary and binary operators.
    then
        echo -e "${BLUE}---cd "$1" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---cd "$1" defe((---${NORMAL}" #sistem info mesage
        qq_pause "message_for_pause" "$filename" "$LINENO"
    fi
}

export cd_s

cd_h(){
    echo -e "${CYAN}---cd_h()---${NORMAL}" #started functions
    
    if ! [ -e "$1" ]; then
        # fons not exist
        qq_exit "fons = $1 not exist" "$3" "$4"
    fi
    
    if cd "$1"     # ← see 'man test' for available unary and binary operators.
    then
        echo -e "${BLUE}---cd "$1" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---cd "$1" defe((---${NORMAL}" #sistem info mesage
        qq_exit "message_for_exit" "$filename" "$LINENO"
    fi
}

export cd_h

cd_mkdir_s(){
    echo -e "${CYAN}---cd_mkdir_s()---${NORMAL}" #started functions
    
    mkdir_rm_h "$1" "$2" "$3"
    cd_s "$1" "$2" "$3"

}

export cd_mkdir_s

cd_mkdir_h(){
    echo -e "${CYAN}---cd_mkdir_h()---${NORMAL}" #started functions
    
    mkdir_rm_h "$1" "$2" "$3"
    cd_h "$1" "$2" "$3"

}

export cd_mkdir_s

unset filename

