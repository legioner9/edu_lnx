# HIE _d5d

## CAUSA:
ПРИЧИНА создания:
<!-- {{fn_hie_body_CAUSA}} -->
Требуется вставить рекурсивно поддиректории из одной директории в другую - 
и файлы и поддиректории

Директория для вставки (rcv_dr) - принимает сущности из (ins_dr) - про следующему алгоритму - 
    - в ней есть сущности-ссылки  в именах которых содержится способ их реализации
    - обрабатывающая процедура реализует ссылки в (rcv_dr) используя (ins_dr)

## FORMULA:
СХЕМА решения:
<!-- {{fn_hie_body_FORMULA}} -->
    dr - dir
    fl - file
    et - entety - file|dir
    nm - name
    et_lk - entety ссылка в ее имени содержится способ ее обработки
    sdr - subdir
    pth - path
    rcv_dr - rcv dir
    ins_dr - ins dir
    prx - prefix
    prx_et - prefix for entety (e.c. recommendationSTL for dr @|for fl &)
    lext - последнее расширение имени справа

```js
// псевдокод поясняющий работу _d5d

// @ и & префиксы рекомендованы стандартом STL - user префиксы допустимы

_d5d (ins_dr,@,&,rcv_dr){ 
    realization (rcv_dr/pth_lk/@ins_sdr@nm_sdr){ 
        cp -r ins_dr/ins_sd rcv_dr/pth_lk/nm_sdr 
    }

    realization (rcv_dr/pth_lk/&ins_fl&nm_fl){ 
        cp ins_dr/ins_fl rcv_dr/pth_lk/nm_fl 
    }
 
}
```
 
## DOGMA:
РЕШЕНИЕ задачи:
<!-- {{fn_hie_body_DOGMA}} -->
0. Делаем копию `cp -r [destination_dir] _[destination_dir]._d5d` в оригинал вносим изменения - копия для истории изменений - скрываем ее под _
        
1. Далее для краткости `_[destination_dir]` == `rcv_dr`
2. Для вставки `et` лежат в `ins_et` в корне - во вставках могут быть ссылки для вставок

3. Находим в `rcv_dr`  `et` префиксом (это один символ) `prx_et` и именами `str_nms` (начальный `prx_et` отбрасывается) 
    - `et` называется link_dr or link_fl - ссылочная директория или ссылочный файл
    - if et=dr - dir содержит только fl _0 , используется только ее имя и путь к ней
    - if et=fl - file пустой , используется только его имя и путь к нему
    - имена dir имеют обязательное lext .d
    - имена fl не могут иметь lext=.d 
      - e.c. pth/@var1.d@var2.d , pth/&var3&var4
    - делаем рекурсивную функцию вставки сначала все директории,потом в них вставляем файлы, потом выводим нереализованные ссылки 
            
4. Парсим `str_nms` которая должна быть следующей по составу: `ins_nm{prx_et}rcv_nm` (e.c. n1@n2, n3&n4)
     - отбрасываем первый `{prx_et}` символ 
     - `str_nms=ins_nm{prx_et}rcv_nm ; str_nms_arr=(${str_nms//{prx_et}/ })` получение массива из строки с разделителем через замену разделителя на пробел
       -  `ins_nm=${str_nms_arr[0]}` имя вставляемого 
       -  `rcv_nm=${str_nms_arr[1]}` имя принимающего содержание вставляемого
    - ищем `rcv_nm` в `rcv_dr` 
    - делаем `rcv_dr/rcv_pth/{prx_et}str_nms -> rcv_dr/rcv_pth/rcv_nm` - `rcv_nm` имеет содержание из `ins_nm`:
    - делаем копию `mv rcv_dr/rcv_pth/{prx_et}str_nms rcv_dr/rcv_pth/_{prx_et}str_nms` - уберем из видимости STL _{prx_et}str_nms - 
        префикс _ для исключения из иттератора _dd2e и сохранения истории изменений
       - `cp -r ins_dr/ins_nm/. rcv_dr/rcv_pth/rcv_nm` для директорий
       - `cp ins_dr/ins_nm rcv_dr/rcv_pth/rcv_nm` для файлоа
5. Повторяем 3 и 4 пункт т.к. `rcv_dr` так же может содержать `{prx_et}*`
6. Убеждаемся что уже ничего вставить невозможно
7. Если в `rcv_dr` остались `{prx_et}str_nms` которые заменить невозможно, то 
        выводим их список в качестве предупреждения

8. Пересоздаем директорию служебных файлов utl_dr=$(_prs_f -d "${res_fl}")/_$(_prs_f -n "${rcv_dr}").${ptx_fn}.d где ${ptx_fn}=_d5d
9. Создаем free_link_lst=${utl_dr}/free_link.lst - файл со списком нереализованых ссылок в rcv_dr
10. Создаем source файл со строкой команды _d5d args sorce_file=${utl_dr}/restart.sh 
- запуск и содержание :

```sh 
$ source ${source_file}    
$ cat ${source_file}
    # restore backup [destination_dir]
    cp [base_rcv]/_[name_rcv]._d5d [base_rcv]/[name_rcv]
    # repeat exec command
    _d5d ${ins_dr} ${prx_dr} ${prx_fl} ${rcv_dr}
``` 
10.  Создаем файл ${utl_dr}/readme.stnd.md с пояснениями - _d5d.hie and _d5d.sh


### TST
<!-- {{fn_hie_body_TST}} -->


### FLOW_1
<!-- {{fn_hie_body_FLOW_1}} -->

 
```bash
#!/bin/bash

_d5d() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local item=

    #* local fn_data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.d

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${FNN}.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.tst.d
    local tst_dir_file=${tst_dir}/${FNN}.tst.sh
    local flow_dir_file_1=${tst_dir}/${FNN}.tst.sh.deb1
    local tst_lst_env=${tst_dir}/.lst/tst_env.lst

    local data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${FNN}.d
    local data_dir_lst=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${FNN}.d/.lst
    local data_dir_prc=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${FNN}.d/.prc
    local data_dir_tml=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${FNN}.d/.tml

    local comm_dir_tst=${HOME}/.d/.rpn.ax.d

    local hie_file=${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/${FNN}.hie

    #? _lnv2e ${tst_lst_env}

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    if [[ "_e" == "$1" ]]; then
        _edit ${sh_file}
        cd $PPWD
        return 0
    fi

    if [[ "_t" == "$1" ]]; then
        _edit ${tst_dir}
        cd $PPWD
        return 0
    fi

    if [[ "_d" == "$1" ]]; then
        . ${tst_dir_file}
        cd $PPWD
        return 0
    fi

    if [[ "_f1" == "$1" ]]; then
        . ${flow_dir_file_1}
        cd $PPWD
        return 0
    fi

    if [[ "_f1_e" == "$1" ]]; then
        _edit ${flow_dir_file_1}
        cd $PPWD
        return 0
    fi

    if [[ "_hie_m" == "$1" ]]; then
        more ${hie_file}
        cd $PPWD
        return 0
    fi

    if [[ "_hie_e" == "$1" ]]; then
        _edit ${hie_file}
        cd $PPWD
        return 0
    fi

    if [[ "_data_e" == "$1" ]]; then
        _edit ${data_dir}
        cd $PPWD
        return 0
    fi

    #? ----- START _d5d body_prepeare -----

    local hint="hint->\$1 ins_dr \$2 pfx_dr \$3 pfx_fl \$4 rcv_dr"
    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: \$1 ins_dr \$2 pfx_dr \$3 pfx_fl \$4 rcv_dr [see .hie]
TAGS: 
\$1 ins_dr
\$2 pfx_dr 
\$3 pfx_fl
\$4 rcv_dr
[, \$2]
[, \$N last arg DEBAG CNTL
    if '_i' debag action, use: [ \$di -eq 1 ] && {debag action} ]

UCNT:
    _?
CNTL: 
    _e      : _edit body            : _edit file://${sh_file}
    _t      : _edit tst_dir         : _edit file://${tst_dir}
    _d      : exec tst_dir_fn       : . file://${tst_dir_file}
    _f1     : exec flow_dir_file_1  : . file://${flow_dir_file_1}
    _f1_e   : _edit flow_dir_file_1 : _edit file://${flow_dir_file_1}
    _hie_m  : more hie_file         : more file://${hie_file} 
    _hie_e  : _edit hie_file        : _edit file://${hie_file} 
    _data_e : _edit data_dir        : _edit file://${data_dir} 

RETU: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERNO: ( if ... return 0 | if ... return 1 )
EXAM: 
    ${FNN}
"
        return 0
    fi

    #* check _isn_from
    # hint="\$1: \$2: "
    if _isn_from ${NARGS} 4 4 "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND '4' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        cd $PPWD
        return 1
    fi

    #* path -> u@path
    #[[ptr_path]]
    #! ptr_path
    local ptr_path_1="$1"
    ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    local ptr_path_4="$4"
    ptr_path_4="$(_abs_path "${PPWD}" "ptr_path_4")"

    # [[ "${arg_arr[*]}" == *$arg* ]]

    #* DEBAG CNTL
    # local di=
    # if [ -n "$N" ]; then
    #     if [ "$N" == "_i" ]; then
    #         di=1
    #     else
    #         di=0
    #     fi
    # else
    #     di=0
    # fi
    #* [ $di -eq 1 ] && echo "info"

    #* greeting
    echo -e "${CYAN}--- $FNN() $* in file://${sh_file} ---${NORMAL}" #started functions

    #* rename args
    local ins_dr=${ptr_path_1}
    local prx_dr=$2
    local prx_fl=$3
    local rcv_dr=${ptr_path_4}
    #* check cntl
    #* inname cntl
    _d5d_before_return() {
        :
    }

    #? ----- START _d5d body_flow -----

    [ -d "${ins_dr}" ] || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : NOT_DIR (\$) : 'file://${ins_dr}' : ${hint} : return 1"
        cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 1" >&2
        return 1
    }

    [ -d "${rcv_dr}" ] || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : NOT_DIR (\$) : 'file://${rcv_dr}' : ${hint} : return 1"
        cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 1" >&2
        return 1
    }

    #! Делаем копию `cp -r [destination_dir] _[destination_dir]` в оригинал вносим изменения - копия для истории изменений - скрываем ее под _
    #! Далее для краткости `_[destination_dir]` == `rcv_dr`
    #! ext ._d5d образовалась при работе _d5d

    local _rcv_dr=
    _rcv_dr=$(_prs_f -d "${rcv_dr}")/_$(_prs_f -ne "${rcv_dr}").${FNN}
    echo -e "${GREEN}\$_rcv_dr = '$_rcv_dr'${NORMAL}" #print variable

    if [ -d "${_rcv_dr}" ]; then
        rm -r "${_rcv_dr}"
    fi
    mkdir "${_rcv_dr}"
    echo -e "${HLIGHT}--- cp -r ${rcv_dr}/. ${_rcv_dr} ---${NORMAL}" #start files
    _cpr9 "${rcv_dr}"/. "${_rcv_dr}"

    local pth_et=
    local prx_et=
    local str_nms=
    local str_nms_arr=()

    local free_rcv_link_arr=()

    local ins_nm=
    local rcv_nm=
    local pth_ins_nm=

    _d5d_rec_dr() {

        local flag_chng_rcv_dr=0

        #! ищем `rcv_nm` в `rcv_dr`
        for pth_et in $(_dr2e "${rcv_dr}"); do
            #! _prs_f -ne имя с расширением
            et_nm=$(_prs_f -ne "${pth_et}")
            prx_et="${et_nm:0:1}"

            #! ищем link_sd с префиксом prx_dr
            if [ -d "${pth_et}" ] && [ "${prx_et}" == "${prx_dr}" ]; then
                echo -e "${GREEN}\${pth_et} = '${pth_et}'${NORMAL}" #print variable

                #! есть изменения
                flag_not_change=1

                #! base_rcv_nm basename for rcv_nm
                base_rcv_nm=$(_prs_f -d "${pth_et}")

                #! Парсим `str_nms` которая должна быть следующей по составу: `ins_nm{prx_et}rcv_nm` (e.c. n1@n2, n3&n4)
                str_nms=${et_nm:1}
                str_nms_arr=(${str_nms//${prx_et}/ })

                #! ins_nm имя директории с содержимым - rcv_nm имя результирующей директории
                ins_nm=${str_nms_arr[0]}
                rcv_nm=${str_nms_arr[1]}

                #! pth_rcv_nm полный путь с именем к результирующей директории
                pth_rcv_nm=${base_rcv_nm}/${rcv_nm}

                #! путь к директории с содержимым pth_ins_nm cd $PPWD в корне ins_dr - но он может и несуществовать
                pth_ins_nm=${ins_dr}/${ins_nm}

                #! проверим существует ли директория для вставки ins_nm - она в корне ins_dr
                echo -e "${HLIGHT}--- if [ -d file://${pth_ins_nm}] ---${NORMAL}" #start files

                if [ -d "${pth_ins_nm}" ]; then

                    #! делаем копию `mv rcv_dr/rcv_pth/{prx_et}str_nms rcv_dr/rcv_pth/_{prx_et}str_nms` - уберем из видимости STL _{prx_et}str_nms - префикс _ для исключения из иттератора _dd2e и сохранения истории изменений
                    _pth_et=$(_prs_f -d "${pth_et}")/_$(_prs_f -ne "${pth_et}")
                    if [ -d "${_pth_et}" ]; then
                        rm -r "${_pth_et}"
                    fi
                    mkdir "${_pth_et}"
                    _cpr9 "${pth_et}"/. "${_pth_et}"

                    #! копируем pth_ins_nm -> pth_rcv_nm
                    if [ -d "${pth_rcv_nm}" ]; then
                        rm -r "${pth_rcv_nm}"
                    fi
                    mkdir "${pth_rcv_nm}"

                    echo -e "${HLIGHT}--- _cpr9 ${pth_ins_nm}/. ${pth_rcv_nm} ---${NORMAL}" #start files
                    _cpr9 "${pth_ins_nm}"/. "${pth_rcv_nm}"

                    #! после копирования удаляем link
                    echo -e "${HLIGHT}--- rm -r file://${pth_et} ---${NORMAL}" #start files
                    rm -r "${pth_et}"

                    flag_chng_rcv_dr=1
                fi

            fi

            #! ищем link_fl с префиксом prx_fl
            if [ -f "${pth_et}" ] && [ "${prx_et}" == "${prx_fl}" ]; then
                echo -e "${GREEN}\${pth_et} = '${pth_et}'${NORMAL}" #print variable
            fi

        done

        if [ ${flag_chng_rcv_dr} -eq 0 ]; then
            return 0
            cd $PPWD
        fi

        if [ ${flag_chng_rcv_dr} -eq 1 ]; then
            _d5d_rec_dr "$1" "$2" "$3" "$4"
        fi

        return 0

    }

    # local ins_dr=${ptr_path_1}
    # local prx_dr=$2
    # local prx_fl=$3
    # local rcv_dr=${ptr_path_4}

    _d5d_rec_dr "${ins_dr}" "${prx_dr}" "${prx_fl}" "${rcv_dr}"

    _d5d_rec_fl() {

        local flag_chng_rcv_fl=0

        #! ищем `rcv_nm` в `rcv_dr`
        for pth_et in $(_dr2e "${rcv_dr}"); do
            #! _prs_f -ne имя с расширением
            et_nm=$(_prs_f -ne "${pth_et}")
            prx_et="${et_nm:0:1}"

            #! ищем link_fl с префиксом prx_fl
            if [ -f "${pth_et}" ] && [ "${prx_et}" == "${prx_fl}" ]; then
                echo -e "${GREEN}\${pth_et} = '${pth_et}'${NORMAL}" #print variable

                #! есть изменения
                flag_not_change=1

                #! base_rcv_nm basename for rcv_nm
                base_rcv_nm=$(_prs_f -d "${pth_et}")

                #! Парсим `str_nms` которая должна быть следующей по составу: `ins_nm{prx_et}rcv_nm` (e.c. n1@n2, n3&n4)
                str_nms=${et_nm:1}
                str_nms_arr=(${str_nms//${prx_et}/ })

                #! ins_nm имя директории с содержимым - rcv_nm имя результирующей директории

                ins_nm=${str_nms_arr[0]}
                rcv_nm=${str_nms_arr[1]}

                # echo -e "${GREEN}\$ins_nm = '$ins_nm'${NORMAL}" #print variable
                # echo -e "${GREEN}\$rcv_nm = '$rcv_nm'${NORMAL}" #print variable

                #! pth_rcv_nm полный путь с именем к результирующей директории
                pth_rcv_nm=${base_rcv_nm}/${rcv_nm}

                # #! путь к директории с содержимым pth_ins_nm найдем простым перебором в корне ins_dr
                # for item_ins_nm in $(_dd2e "${ins_dr}"); do
                #     if [ "${item_ins_nm}" == "${ins_nm}" ]; then
                #         pth_ins_nm=${ins_dr}/${ins_nm}
                #     fi
                # done

                pth_ins_nm=${ins_dr}/${ins_nm}

                #! проверим существует ли файл для вставки - она в корне ins_dr
                echo -e "${HLIGHT}--- if [ -f file://${pth_ins_nm}] ---${NORMAL}" #start files

                if [ -f "${pth_ins_nm}" ]; then

                    #! делаем копию `mv rcv_dr/rcv_pth/{prx_et}str_nms rcv_dr/rcv_pth/_{prx_et}str_nms` - уберем из видимости STL _{prx_et}str_nms - префикс _ для исключения из иттератора _dd2e и сохранения истории изменений
                    _pth_et=$(_prs_f -d ${pth_et})/_$(_prs_f -ne "${pth_et}")
                    if [ -f "${_pth_et}" ]; then
                        rm "${_pth_et}"
                    fi
                    cp "${pth_et}" "${_pth_et}"

                    #! копируем pth_ins_nm -> pth_rcv_nm
                    if [ -f "${pth_rcv_nm}" ]; then
                        rm "${pth_rcv_nm}"
                    fi
                    echo -e "${HLIGHT}--- cp file://${pth_ins_nm} file://${pth_rcv_nm} ---${NORMAL}" #start files
                    cp "${pth_ins_nm}" "${pth_rcv_nm}"

                    #! после копирования удаляем link
                    echo -e "${HLIGHT}--- rm file://${pth_et} ---${NORMAL}" #start files
                    rm "${pth_et}"

                    flag_chng_rcv_dr=1
                fi

            fi

        done

        if [ ${flag_chng_rcv_fl} -eq 0 ]; then
            return 0
        fi

        if [ ${flag_chng_rcv_fl} -eq 1 ]; then
            _d5d_rec_fl "$1" "$2" "$3" "$4"
        fi

        cd $PPWD
        return 0

    }

    _d5d_rec_fl ${ins_dr} ${prx_dr} ${prx_fl} ${rcv_dr}

    #! array free link
    local free_link_rcv_arr=()

    #! file list free link
    free_link_lst=$(_prs_f -d "${rcv_dr}")/_$(_prs_f -ne "${rcv_dr}").${FNN}.lst
    : >"${free_link_lst}"

    #! находим нереализованые ссылки
    #! ищем `rcv_nm` в `rcv_dr`
    for pth_et in $(_dr2e "${rcv_dr}"); do
        #! _prs_f -ne имя с расширением
        et_nm=$(_prs_f -ne "${pth_et}")
        prx_et="${et_nm:0:1}"
        if { [ -f "${pth_et}" ] && [ "${prx_et}" == "${prx_fl}" ]; } || { [ -d "${pth_et}" ] && [ "${prx_et}" == "${prx_dr}" ]; }; then
            free_link_rcv_arr+=("${pth_et}")
            echo "${pth_et}" >>"${free_link_lst}"
        fi
    done

    #! заменим в файле ${free_link_lst} '~' на системную константу '${HOME}' - для переносимости
    _s2f "${HOME}" '${HOME}' "${free_link_lst}"

    [ -z "${free_link_rcv_arr[0]}" ] || {
        _st_info "start list free link in ${rcv_dr} :"
        _parr3e free_link_rcv_arr
        _st_info ": end list free link in ${rcv_dr}"

    }

    #! Создаем source файл со строкой команды '_d5d args' sorce_file=$(_prs_f -d "${rcv_dr}")/_$(_prs_f -ne "${rcv_dr}").sh._d5d - запуск $ surce

    #! реализация интерфейса ufl_stl0 1 (см. ufl_stl0 1 -h)
    local base_rcv=$(_prs_f -d "${rcv_dr}")

    local sh_nm=_"$(_prs_f -ne "${rcv_dr}")".${FNN}.sh
    local sh_fl=${base_rcv}/"${sh_nm}"

    cd "${base_rcv}" || {
        _st_exit "in fs= file://${sh_file} , line=${LINENO}, EXEC: ${FNN} $* : NOT_DIR : 'file://${base_rcv}' : ${hint} : return 1"
        cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 1" >&2
        return 1
    }

    [ -f ${sh_fl} ] && {
        rm "${sh_fl}"
    }
    #! создание файла с самовызовом функции со случайным именем для создания временного контекста
    #! и избежания конфликта имен функций, которые всегда в глобальном контексте
    ufl_stl0 1 "${sh_nm}"

    #! реализация интерфейса _f2f (см. _f2f -h)
    #! подготовка .tmp файла для вставки
    echo -e "

    #! ЭТО скрипт повторного запуска _d5d из директории ${_rcv_dr} - возможность ее коррекции
    #! перед повтором есть суть отладки 

    #! создание резервной копии ${_rcv_dr}
    rm -r ${_rcv_dr}~
    cp -r ${_rcv_dr} ${_rcv_dr}~
    
    #! восстановление ${rcv_dr} из ${_rcv_dr}
    rm -r ${rcv_dr} 
    cp -r ${_rcv_dr} ${rcv_dr} 

    #! повтор отображения _d5d с теми же параметрами
    ${FNN} \"${ins_dr}\" '${prx_dr}' '${prx_fl}' \"${rcv_dr}\"

    #! анализ отображения 
    tree ${ins_dr}
    tree ${_rcv_dr}
    tree ${rcv_dr}
    
" >"${sh_fl}.tmp"

    #! в файле ${sh_fl} заменим {{body_fn}} на реализуемую процедуру '_d5d args'
    echo -e "${HLIGHT}--- _f2f ${sh_fl}.tmp {{body_fn}} file://${sh_fl} ---${NORMAL}" #start files
    _f2f "${sh_fl}.tmp" "{{body_fn}}" "${sh_fl}"

    #! константа путей
    _s2f "${HOME}" '${HOME}' "${sh_fl}"

    #! удаляем временный файл
    rm "${sh_fl}.tmp"

    #!Создаем файл readme.man._d5d с пояснениями - .hie и _d5d.sh
    local read_fl=${base_rcv}/_"$(_prs_f -ne "${rcv_dr}")".${FNN}.readme.md

    : >"${read_fl}"
    cat "${hie_file}" >>"${read_fl}"

    echo '```bash' >>"${read_fl}"
    cat "${sh_file}" >>"${read_fl}"
    echo '```' >>"${read_fl}"
    #* {{fn_sh_body}}

    #? ----- END _d5d body -----

    cd $PPWD
    return 0

}
```
