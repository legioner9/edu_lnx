#!/bin/bash

echo -e "${BLUE}--- that file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/cp_dotstldotd.sh ---${NORMAL}" #sistem info mesage

cp_dotstldotd() {
    # #! rbld ${HOME}/.stl.d/stl.opus.d
    # local rbld_stl_opus_pth=${HOME}/.stl.d/data.d/opus.d/boot.opus/_rbld_res_md.sh
    # if [[ -f ${rbld_stl_opus_pth} ]]; then
    #     . ${rbld_stl_opus_pth} || {
    #         echo "in file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/cp_dotstldotd.sh : FAIL_EXEC: . file://${rbld_stl_opus_pth} return 1" >&2
    #         return 1
    #     }
    # fi

    #! if diff -> cp ~/.stl.d to stl_repo
    diff -r ${HOME}/.stl.d ${REPO_PATH}/${name_repo}/.d/.stl.d.copy || {
        #! is_yes_boot_stl "cp -rf ${HOME}/.stl.d ${REPO_PATH}/${name_repo}/.d/.stl.d.copy" && {
        _is_yes "cp -rf ${HOME}/.stl.d ${REPO_PATH}/${name_repo}/.d/.stl.d.copy" && {
            echo "exec: cp -fr ${HOME}/.stl.d ${REPO_PATH}/${name_repo}/.d/.stl.d.copy"
            rm -rf ${REPO_PATH}/${name_repo}/.d/.stl.d.copy~
            mv ${REPO_PATH}/${name_repo}/.d/.stl.d.copy ${REPO_PATH}/${name_repo}/.d/.stl.d.copy~
            cp -fr ${HOME}/.stl.d ${REPO_PATH}/${name_repo}/.d/.stl.d.copy || {
                echo "in file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/cp_dotstldotd.sh : FAIL_EXEC: cp -fr ${HOME}/.stl.d ${REPO_PATH}/${name_repo}/.d/.stl.d.copy return 1" >&2
                return 1
            }
        }

        return 0
    }
    return 0
}

if ! cp_dotstldotd; then
    echo "in file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/cp_dotstldotd.sh : FAIL_EXEC : cp_dotstldotd() : return 1" >&2
    return 1
fi
