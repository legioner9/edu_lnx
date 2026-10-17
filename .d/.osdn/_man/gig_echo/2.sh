#!/bin/bash
fn(){
# val_1_234erwf="init_value3"
local rnd="234erXX"

# value of val_1_234erwf is $(eval "echo \$val_1_${rnd}")

# eval "scr_${rnd}=\${val_1_${rnd}}_scr1"

# eval "echo \$scr_${rnd}"


g_v() { # $1->rnd $2->nm $3->vol
	eval "${2}_${1}=${3}"
}

e_v() { #$1->rnd ->$(eval "echo \$arg_2_fn_${rnd}")
	eval "echo \$${2}_${1}"
}

g_v ${rnd} val_1 init_value3

eval "local var2_${rnd}"

g_v ${rnd} var2 "$(e_v ${rnd} val_1)"_add

echo "&var2=$(e_v ${rnd} var2)"

}

fn