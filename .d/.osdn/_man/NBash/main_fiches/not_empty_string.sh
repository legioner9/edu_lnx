man_is(){
    echo -e "${CYAN}---man_is() $*---${NORMAL}" #started functions
    echo -e "${GREEN}\$1 = $1${NORMAL}" #print variable
    
    if [ "$1" ]; then
        
        cd_h "$1"
        
    fi
    
    
    echo -e "${CYAN}---man_is() $*---${NORMAL}" #started functions
    PPWD=$PWD
    PS3="eligendi actiones gvim -v pages: "
    select item in *;do
        
        gvim -v $PPWD/$item
        
    done
}