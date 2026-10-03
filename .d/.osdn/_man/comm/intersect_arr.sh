#!/usr/bin/env bash

arr_1=(  a a b c )
arr_2=( b c d )

wrp_fifs1_ mkdir $HOME/TMP/ -cnd1

# echo ${arr_1[*]}
# echo ${arr_2[*]}
echo -e "${GREEN}\${arr_1[@]} = ${arr_1[*]}${NORMAL}" #print variable
echo -e "${GREEN}\${arr_2[@]} = ${arr_2[*]}${NORMAL}" #print variable

printf -- '%s\n' ${arr_1[@]} > $HOME/TMP/arr_1
printf -- '%s\n' ${arr_2[@]} > $HOME/TMP/arr_2

echo -e "${BLUE}--- comm $HOME/TMP/arr_1 $HOME/TMP/arr_2 ---${NORMAL}" #sistem info mesage
comm  $HOME/TMP/arr_1 $HOME/TMP/arr_2 > $HOME/TMP/res
cat $HOME/TMP/res

echo -e "${BLUE}--- comm -1 $HOME/TMP/arr_1 $HOME/TMP/arr_2 ---${NORMAL}" #sistem info mesage
comm -1 $HOME/TMP/arr_1 $HOME/TMP/arr_2

echo -e "${BLUE}--- comm -2 $HOME/TMP/arr_1 $HOME/TMP/arr_2 ---${NORMAL}" #sistem info mesage
comm -2 $HOME/TMP/arr_1 $HOME/TMP/arr_2

echo -e "${BLUE}--- comm -3 $HOME/TMP/arr_1 $HOME/TMP/arr_2 ---${NORMAL}" #sistem info mesage
comm -3 $HOME/TMP/arr_1 $HOME/TMP/arr_2

echo -e "${BLUE}--- (arr_1 - arr_2)  comm -23 $HOME/TMP/arr_1 $HOME/TMP/arr_2 ---${NORMAL}" #sistem info mesage
comm -23 $HOME/TMP/arr_1 $HOME/TMP/arr_2

echo -e "${BLUE}--- (arr_1 - arr_2) comm -13 $HOME/TMP/arr_1 $HOME/TMP/arr_2 ---${NORMAL}" #sistem info mesage
comm -13 $HOME/TMP/arr_1 $HOME/TMP/arr_2

echo -e "${BLUE}--- comm -12 $HOME/TMP/arr_1 $HOME/TMP/arr_2 ---${NORMAL}" #sistem info mesage
comm -12 $HOME/TMP/arr_1 $HOME/TMP/arr_2



arr=()
arr_2=()