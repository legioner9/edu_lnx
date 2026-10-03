#!/usr/bin/env bash

arr_1=( a a b c )
arr_2=( h h b c d  )

echo -e "${GREEN}\${arr_1[@]} = ${arr_1[*]}${NORMAL}" #print variable
echo -e "${GREEN}\${arr_2[@]} = ${arr_2[*]}${NORMAL}" #print variable

echo -e "${BLUE}--- printf -- '%s\\n' ${arr_1[@]} | unid -c > $HOME/TMP/arr_1 ---${NORMAL}" #sistem info mesage
printf -- '%s\n' ${arr_1[@]} | uniq -c > $HOME/TMP/arr_1
cat $HOME/TMP/arr_1

printf -- '%s\n' ${arr_2[@]} > $HOME/TMP/arr_2