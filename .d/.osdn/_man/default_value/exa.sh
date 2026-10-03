#!/bin/bash

# Чтобы получить присвоенное значение или default если оно отсутствует:

FOO="${VARIABLE:-default}"  # FOO will be assigned 'default' value if VARIABLE not set or null.
# The value of VARIABLE remains untouched.

# Чтобы сделать то же самое, а также назначить default для VARIABLE:

FOO="${VARIABLE:=default}"  # If VARIABLE not set or null, set it's value to 'default'. 
# Then that value will be assigned to FOO