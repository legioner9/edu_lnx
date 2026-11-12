#!/bin/bash

cd ~/rpo/edu_lnx/.d/.osdn/_man/between_mask || {
	l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'"
	echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  EXEC_FAIL : 'cd ~/rpo/edu_lnx/.d/.osdn/_man/between_mask', return 1${NRM}" >&2
	return 1
}

grep "##begin" file.txt | grep "/##end/"