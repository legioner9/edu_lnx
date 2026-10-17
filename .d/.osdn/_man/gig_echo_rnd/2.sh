#!/bin/bash
fn() {
	# val_1_234erwf="init_value3"
	local rnd="234erXX"

	# value of val_1_234erwf is $(eval "echo \$val_1_${rnd}")

	# eval "scr_${rnd}=\${val_1_${rnd}}_scr1"

	# eval "echo \$scr_${rnd}"

	g_v() { # $1->rnd $2->nm $3->vol
		[[ $1 == "-h" ]] && {
			l_00_echo_code "start :: <${FUNCNAME[0]}> '$@'" #exit
			echo -e "	\$1->rnd \$2->nm \$3->vol
	g_v()::eval \${2}_\${1}=\${3}"
			l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'" #exit
			return 0
		}
		:
		eval "${2}_${1}=${3}"

	}

	v_v() { # $1->rnd $2->nm
		eval "echo \$${2}_${1}"
	}

	n_v() { # $1->rnd $2->nm
		eval "echo ${2}_${1}"
	}

	i_v() { # $1->rnd $2->nm
		l_00_echo_info "\$$(n_v ${1} ${2})=$(e_v ${1} ${2})"
	}

	g_v -h

	g_v ${rnd} val_1 init_value3

	eval "local var2_${rnd}"

	g_v ${rnd} var2 "$(v_v ${rnd} val_1)"_add

	echo "&var2=$(v_v ${rnd} var2)"
	echo "*var2=$(n_v ${rnd} var2)"
	i_v ${rnd} var2

}

fn
