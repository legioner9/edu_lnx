#!/bin/bash

# -> get_reserv_repo resulting reserv_repo in up_git_memory.sh

. "$HOME/.qa/lib/1_ini.sh"

filename="$HOME/.qa/sis_git/up_git_memory.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#upgit

unset filename

upgit() {

    echo -e "${CYAN}---upgit()---${NORMAL}"

    if [ -f "$HOME"/.gituid ]; then

        f1=0

        s2a '#' "$(cat $HOME/.gituid)"

        did=${_s2a_[0]}
        repo_path=${_s2a_[1]}
        bare_str_path=${_s2a_[2]}
        clone_path=${_s2a_[3]}

        _s2a_=()

        # echo "\$did = $did"
        # echo "\$repo_path = $repo_path"
        # echo "\$bare_str_path = $bare_str_path"
        # echo "\$clone_path = $clone_path"

        s2a ';' "$bare_str_path"

        bare_arr_path=(${_s2a_[@]})

        export did
        export repo_path
        export bare_arr_path
        export clone_path

        _s2a_=()

    else

        echo -e "${BLUE}---not exist .gituid---${NORMAL}"
        f1=1

    fi

    if [ -f "$HOME"/.gitrepo ]; then

        f2=0

        f2a_clear "$HOME/.gitrepo"

        all_repo_arr_name=(${_f2a_clear_[@]})

        # export repo_arr_name

        parse_all_repo_arr_name ${all_repo_arr_name[*]}

        _f2a_clear_=()

    else

        echo -e "${BLUE}---not exist .gitrepo---${NORMAL}"

        f2=1

    fi

    fgit=$((f1 + f2))

    unset f1
    unset f2

    echo -e "${GREEN}\$fgit = $fgit${NORMAL}"

    export fgit

}

export upgit

# e

parse_all_repo_arr_name() {
    echo -e "${CYAN}---parse_all_repo_arr_name()---${NORMAL}" #started functions

    repo_arr_name=()
    reserv_repo_arr_name=()


    for item in "$@"; do
        echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

    done

    export repo_arr_name
    export reserv_repo_arr_name

}

upgit # debug
