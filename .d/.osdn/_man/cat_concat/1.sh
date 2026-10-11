#!/bin/bash
# - is stdin fl2=(fl>fl1)
cat fl | cat - fl1 >fl2
