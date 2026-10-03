#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: exec (source) recurce in dir \$1 stl_files with ext=.sh
TAGS:
\$1 
[, \$2]
CNTL: 
    -h : help
    _go : edit body      : l_02_edit ${fn_nm}
    ${FNN}
"
    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
fi

echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

if type l_00_echo_exec &>/dev/null; then
    l_00_echo_exec "${FNN}() $*"
else
    echo -e "${FNN}() $*"
fi

#! IFS to default value
unset IFS

if [[ -d "$1" ]]; then
    cd "$1" || {
        l_00_echo_ret1 "'$FNN() $*' :: FAIL_EXEC :: 'cd $1' :: return 1"
        cd "$PPWD" || l_00_echo_ret1 "'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue"
        return 1
    }
else
    l_00_echo_ret1 "'$FNN() $*' :: \$1='$1' is not dir"
    cd "$PPWD" || l_00_echo_ret1 "'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue"
    return 1
fi

local dir=
local item=
local item_path=

local fail_flag=

dir=$(pwd)

for item in *; do

    item_path=$dir/$item

    if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ] && [ "${item##*.}" == "sh" ]; then
        l_00_echo_code ". file://$item_path"
        . "$item_path" || {
            fail_flag=1
            l_00_echo_err "'$FNN() $*' :: EXEC_FAIL '. file://$item_path' :: fail_flag=1 :: continue"
            cd "$PPWD" || l_00_echo_err "'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue"
        }

    elif [ -d "$item_path" ] && [ "${item:0:1}" != "_" ]; then

        l_01_c_up "$item_path" || {
            fail_flag=1
            l_00_echo_err "'$FNN() $*' :: EXEC_FAIL 'l_01_c_up file://$item_path' :: fail_flag=1 :: continue"
            cd "$PPWD" || l_00_echo_err "'$FNN() $*' EXEC_FAIL : 'cd $PPWD' : continue"
        }
    fi

done

if [[ 1 -eq ${fail_flag} ]]; then
    l_00_echo_ret1 "'$FNN() $*' ANY_FAIL"
    return 1
else
    l_00_echo_info "'$FNN() $*' ALL_TRUE"
fi
