    eval "cd \${dr_pth_fn_${rnd}} || return 1"

    make hello
    
    ./hello.exe