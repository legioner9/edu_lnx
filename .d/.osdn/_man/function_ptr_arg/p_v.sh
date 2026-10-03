#!/usr/bin/env bash

# name-ptr
# value-value
echo -e "${BLUE}--- p1=v1_p2 ---${NORMAL}" #sistem info mesage
p1=v1_p2
echo -e "${BLUE}--- v1_p2=v2_p3 ---${NORMAL}" #sistem info mesage
v1_p2=v2_p3
echo -e "${BLUE}--- v2_p3=v3 ---${NORMAL}" #sistem info mesage
v2_p3=v3

echo -e "${BLUE}--- echo \${p1} ---${NORMAL}" #sistem info mesage
echo ${p1}    # v1_p2
eval 

echo -e "${BLUE}--- echo \${v1_p2} ---${NORMAL}" #sistem info mesage
echo ${v1_p2} # v2_p3

echo -e "${BLUE}--- echo \\\"\$\${p1}\\\" ---${NORMAL}" #sistem info mesage
echo \"\$${p1}\"
echo -e "${BLUE}--- eval echo \"\$\${p1}\" ---${NORMAL}" #sistem info mesage
eval echo \"\$${p1}\"

echo -e "${BLUE}--- echo \${v2_p3} ---${NORMAL}" #sistem info mesage
echo ${v2_p3} # v3

echo -e "${BLUE}--- echo \\\"\\\$\${v1_p2}\\\" ---${NORMAL}" #sistem info mesage

echo \"\$${v1_p2}\"
echo -e "${BLUE}--- eval echo \\\"\\\$\${v1_p2}\\\" ---${NORMAL}" #sistem info mesage


echo ${p1}

eval echo \"\$${p1}\" # v1_p2

eval echo \"\$${v1_p2}\" # v2_p3 


echo control: 

echo \\\"\\\$\${v1_p2}\\\"  # \"\$${v1_p2}\" 
eval eval echo \\\"\\\$\${v1_p2}\\\"  # \"\$${v1_p2}\" 
eval eval echo \\\"\\\$\${${p1}}\\\"  # \"\$${v1_p2}\" 



# echo eval \\\"\$${\\\"\$${p1}\\\"}\\\" # \"\$${v1_p2}\" 

# eval eval echo \"\$${\"\$${p1}\"}\"

echo ${p1} # v1_p2
eval echo \"\$${p1}\" #v2_p3
eval eval echo \\\"\\\$\${${p1}}\\\"  # v3 
