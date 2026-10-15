#!/bin/bash

fn1() {
	l_00_echo_code "start :: <${FUNCNAME[0]}> '$@'" #exit
	echo "fn1 '$@'"
	source ~/rpo/edu_lnx/.d/.osdn/_man/dig_arg/exec_fl/proc.sh
	l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'" #exit
}

fn1 $@
