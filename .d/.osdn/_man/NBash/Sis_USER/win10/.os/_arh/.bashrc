#!/bin/bash

echo "start .bashrc"
IIFS=$IFS

export IIFS

. "$HOME/.os/git-prompt.sh"

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\u@\H \w$(__git_ps1 " (%s)")\$ '

if [ -f ~/.bash_aliases ]; then

    . ~/.bash_aliases

fi

ladd() {
    dir= $(ls "$1")
    echo "$dir"
}

up_sis() {

    . "$HOME/.os/.bashrc_orig"
    . "$HOME/.os/git-prompt.sh"
    . "$HOME/.os/git-alias.bash"
    . "$HOME/.os/git-completion.bash"

}

export up_sis

up_lib_git() {

    . "$HOME/.qa/lib/1_ini.sh"
    . "$HOME/.qa/sis_git/git_utils.sh"
    . "$HOME/.qa/sis_git/cl_git.sh"

}

export up_lib_git

rr() {
    . ~/.bashrc
}

up_cl_git() {
    . "$HOME/.qa/sis_git/cl_git.sh"
}


export q_init

up_sis
up_cl_git

###
