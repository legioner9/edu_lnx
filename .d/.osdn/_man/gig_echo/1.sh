#!/bin/bash
fn(){
val_1_234erwf="init_value3"
rnd="234erwf"

# value of val_1_234erwf is $(eval "echo \$val_1_${rnd}")

# eval "scr_${rnd}=\${val_1_${rnd}}_scr1"

# eval "echo \$scr_${rnd}"


g_v() { # 
	eval "${1}_${rnd}=${2}"
}

e_v() { #$1=var_1 ->$(eval "echo \$arg_2_fn_${rnd}")
	eval "echo \$${1}_${rnd}"
}

eval "local var2_${rnd}"
g_v var2 "$(eval "echo \$val_1_${rnd}")"_add
e_v var2
}

fn