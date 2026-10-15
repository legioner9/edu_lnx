#!/bin/bash

echo "proc.sh '$@'"

fn_in_prc() {
	l_00_echo_code "start :: <${FUNCNAME[0]}> '$@'"
	echo "fn_in_prc '$@'"
	l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'"
}

fn_in_prc
