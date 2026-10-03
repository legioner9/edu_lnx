#!/usr/bin/env bash

keyA="keyB"
valA="valB"
keyB="that"
valB="amazing"
eval eval \$$keyA=\$$valA
echo $that
# amazing
