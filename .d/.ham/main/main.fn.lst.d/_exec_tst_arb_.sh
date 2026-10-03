#!/bin/bash

file_sh=${MANE_PATH}/.d/.ham/main/main.fn.lst.d/exec_tst_arb_.sh
file_lst=${MANE_PATH}/.d/.ham/main/main.fn.lst.d/_exec_tst_arb_.lst
# file_lst="${REPO_PATH}/${name_repo}"/.d/.ham/main/main.fn.lst.d/_exec_arb2tst_.lst

# echo -e "${RED}--- that file://${file_sh} ---${NORMAL}"               #sistem info mesage
# echo -e "${HLIGHT}--- arb2tst_() wiwh file://${file_lst} ---${NORMAL}" #start files

# if ! [ -f "${file_lst}" ]; then
#     plt_info "in file://${file_sh} : NOT_FILE : ' file://${file_lst}' : return 1"
#     return 1
# fi

# if ! arb2tst_ "${file_lst}" tst; then
#     plt_info "in file://${file_sh} : FAIL_EXEC : 'arb2tst_() wiwh file://${file_lst}' : return 1"
#     return 1
# fi

echo -e "${HLIGHT}--- exec: _tst_arb ${file_lst} ---${NORMAL}" #start files

if ! _tst_arb ${file_lst}; then
    echo "in file://${file_sh} : FAIL_EXEC : '_tst_arb() file://${file_lst}' : return 1" >&2
    return 1
fi

return 0
