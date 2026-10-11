#!/bin/bash

if ! (
	rm -f $pr_dr/$nm_dr
	mkdir $pr_dr/$nm_dr
) >/dev/null; then
	return 1
fi
