#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"
# cd ${COMMUNIS_PATH}/Store/TGU/Анализ_данных_pdf/PT/5
# touch bind.html
# for ((i = 1; i < 9; i++)); do
#     echo -e "${BLUE}--- cat $i.html >> bind.html ---${NORMAL}" #sistem info mesage
#     cat $i.html >>bind.html
# done

cd ${COMMUNIS_PATH}/Store/TGU/Риск_менеджмент_pdf

rm bind.html
touch bind.html

for ((d = 1; d < 15; d++)); do
    for ((i = 1; i < 10; i++)); do
        if [ -f "$d"/"$i".html ]; then
            echo -e "${BLUE}--- cat $d/$i.html > bind.htmll ---${NORMAL}" #sistem info mesage
            wkhtmltopdf "$d"/"$i".html all/"$d"_"$i".pdf
        fi
    done

done

cd "$idir"

unset filename
