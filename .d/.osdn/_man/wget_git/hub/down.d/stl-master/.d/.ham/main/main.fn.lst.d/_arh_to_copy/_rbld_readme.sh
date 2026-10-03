#!/bin/bash

local file_sh=${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/001.inject_fn_ham.sh
echo -e "${BLUE}--- that file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/rbld_readme.sh ---${NORMAL}" #sistem info mesage
# echo -e "${HLIGHT}--- git_reset__() ---${NORMAL}"

#! rgig 001.from_dot_stl.file.md
# local rgig_001_from_dot_stl=${REPO_PATH}/${name_repo}/.d/.opus/readme.opus/cntx.ins.d/099.from_dot_stl.d.ax/_001.from_dot_stl.file.md_ufl9

# source_inject_fn_ham ${REPO_PATH}/${name_repo}/.d/.opus/readme.opus/cntx.ins.d/099.from_dot_stl.d.ax/_001.from_dot_stl.file.md_ufl9 || {
#     echo "in file://${file_sh} :: EXEC_FAIL 'source_inject_fn_ham ${REPO_PATH}/${name_repo}/.d/.opus/readme.opus/cntx.ins.d/099.from_dot_stl.d.ax/_001.from_dot_stl.file.md_ufl9' :: return 1" >&2
#     return 1
# }

# if [ -f ${rgig_001_from_dot_stl} ]; then

#     . ${rgig_001_from_dot_stl} || {
#         echo "in fs= file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/rbld_readme.sh , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '. ${rbld_file}' : ${hint} : return 1" >&2
#         return 1
#     }

# fi

# source_inject_fn_ham ${REPO_PATH}/${name_repo}/.d/.opus/notebook.opus/_rbld_res_md.sh || {
#     echo "in file://${file_sh} :: EXEC_FAIL 'source_inject_fn_ham ${REPO_PATH}/${name_repo}/.d/.opus/notebook.opus/_rbld_res_md.sh' :: return 1" >&2
#     return 1
# }

#! rbld stl repo readme
# local rbld_file=${REPO_PATH}/${name_repo}/.d/.opus/readme.opus/_rbld_res_md.sh #start files

source_inject_fn_ham ${REPO_PATH}/${name_repo}/.d/.opus/readme.opus/_rbld_res_md.sh || {
    echo "in file://${file_sh} :: EXEC_FAIL 'source_inject_fn_ham ${REPO_PATH}/${name_repo}/.d/.opus/readme.opus/_rbld_res_md.sh' :: return 1" >&2
    return 1
}

# if [ -f ${rbld_file} ]; then

#     . ${rbld_file} || {
#         echo "in fs= file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/rbld_readme.sh , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '. ${rbld_file}' : ${hint} : return 1" >&2
#         return 1
#     }

# fi

return 0
