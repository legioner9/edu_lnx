#!/bin/bash

RED='\033[0;31m' # ${RED} # красный цвет знаков
NORMAL='\033[0m' # ${NORMAL} # все атрибуты по умолчанию

echo -e "${ULINE}dubled_command${NORMAL}"
echo -e "${RED}---error message---${NORMAL}"
echo -e "${HLIGHT}---hint message---${NORMAL}"
echo -e "${BLUE}---sis_message---${NORMAL}"
echo -e "${CYAN}---started---${NORMAL}"
echo -e "${GREEN}\$var = $var${NORMAL}"

