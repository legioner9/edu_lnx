#!/bin/bash

cd ${PATH_CURR_REPO}/NBash/_man/pipe
cp a_i.lst a.lst


{ ${_f2e} a.lst; echo 'END OF FILE'; } > b.lst
cp b.lst a.lst
# rm b.lst
