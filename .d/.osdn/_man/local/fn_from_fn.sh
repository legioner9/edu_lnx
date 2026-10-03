#!/usr/bin/env bash

fn1() {
    eval a_$(rand3e 4)=25

    echo $(all_sys_vars) | grep "a_"
}

fn1