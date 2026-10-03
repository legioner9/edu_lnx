# sis 

.bashrc
    up_sis>>

    up_lib_git
        .qa/lib/1_ini.sh
        .qa/sis_git/git_utils.sh
    rr
    up_cl_git>>
        .qa/sis_git/cl_git.sh
    q_init
        .qa/sis_git/git_init.sh

.qa/lib/1_ini.sh
    f2a
    s2a
    mkdir_path
    e_exer

.qa/sis_git/up_git_memory.sh
    .qa/lib/1_ini.sh
    upgit

.qa/sis_git/git_utils.sh
    .qa/sis_git/up_git_memory.sh
    cdrepo
        upgit
    ifgit 
        upgit
    e_git
        upgit

.qa/sis_git/git_init.sh
    .qa/sis_git/git_utils.sh
    clone_init
    create_bare
    add_bare
    clone_repo
    cdrepo
        upgit
        ifgit
        e_git

.qa/sis_git/cl_git.sh
    .qa/lib/1_ini.sh"
    .qa/sis_git/git_utils.sh"
    up_lib_git
    e_git
    q_push
    q_ls
        e_git
        q_push

ProjectRepo_2/_repo/communis/Bat/alt/this_hooks.sh
    pre_push
    post_push
    pre_pull
    post_pull

ProjectRepo_2/_repo/communis/Bat/alt/2_push_to_git.bash
    .bashrc
    ProjectRepo_2/_repo/communis/Bat/alt/this_hooks.sh
    up_lib_git
    e_git
    pre_push

.qa/sis_git/git_refr.sh
    .bashrc
    git_refresh
    now_arr_repo