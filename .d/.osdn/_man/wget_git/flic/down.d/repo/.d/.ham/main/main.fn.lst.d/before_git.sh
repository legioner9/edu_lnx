#!/bin/bash

echo -e "${BLUE}--- that file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/before_git.sh ---${NORMAL}" #sistem info mesage

before_git() {
    l_99_tst_l || {
        return 1
    }
    return 0
}

if ! l_99_tst_l; then
    echo "in file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/before_git.sh : FAIL_EXEC : before_git() : return 1" >&2
    return 1
fi
