#!/bin/bash

# echo "start .bashrc"
echo -e "${HLIGHT}---$HOME/.bashrc---${NORMAL}" #start files

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

echo -e "${CYAN}---up_sis()---${NORMAL}" #started functions

    . "$HOME/.os/.bashrc_orig"
    # . "$HOME/.os/git-prompt.sh"
    . "$HOME/.os/git-alias.bash"
    . "$HOME/.os/git-completion.bash"

    . "$HOME/.qa/gremium/unus.sh"
    . "$HOME/.qa/lib/1_ini.sh"

}

export up_sis

up_lib_git() {

echo -e "${CYAN}---up_lib_git()---${NORMAL}" #started functions

    . "$HOME/.qa/sis_git/up_git_memory.sh"
    . "$HOME/.qa/sis_git/git_utils.sh"
    . "$HOME/.qa/sis_git/cl_git.sh"
    . "$HOME/.qa/sis_git/git_enter.sh"
    . "$HOME/.qa/sis_git/bck_git.sh"
    . "$HOME/.qa/sis_git/git_comands_lib.sh"

}

export up_lib_git

rr() {
    echo -e "${CYAN}---rr()---${NORMAL}" #started functions

    echo -e "${ULINE}. "$HOME/.bashrc"${NORMAL}" #repit commands
    . "$HOME/.bashrc"
}

export q_init

# start libs
up_sis
up_lib_git

# info
upgit
e_git

###
