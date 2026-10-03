#!/bin/bash
f() {
   local var_1=0

    fnn() {
        var_1=1
    }

    fnn

    echo ${var_1}
}

f