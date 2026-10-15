#!/bin/bash

f1(){
	echo "f1 '$1'"
}

f2(){
	f1
}

f2 arg_1_f2 # f1 ''