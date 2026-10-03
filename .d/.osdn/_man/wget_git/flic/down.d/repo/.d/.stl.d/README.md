
<!-- [[__TOC_]] -->

<a name="top"></a>
<a class=top-link hide href="#top">↑</a>

<style type="text/css">
   .top-link {
    transition: all .25s ease-in-out;
    position: fixed;
    bottom: 0;
    right: 0;
    display: inline-flex;
    color: #000000;

    cursor: pointer;
    align-items: center;
    justify-content: center;
    margin: 0 2em 2em 0;
    border-radius: 50%;
    padding: .25em;
    width: 1em;
    height: 1em;
    background-color: #F8F8F8;
}

h1{
    color: rgb(155, 0, 218);
    font-weight: normal;
    font-style: italic;
    font-weight:bold;

}
h2{
    color: rgb(155, 40, 238);
    font-style: italic;
    font-weight:bold;
}
h3{
    color: rgb(155, 80, 218);
    font-style: italic;
    font-weight:bold;
}
h4{
    color: rgb(155, 120, 218);
    font-style: italic;
    font-weight:bold;
}
h5{
    color: rgb(155, 160, 218);
    font-style: italic;
    font-weight:bold;
}
h6 {
    color: rgb(155, 200, 230);
    font-style: italic;
    font-weight:bold;
}
</style>

Start Contents Menu

<!-- TOC toc2f_stl0 --> 
 - <a href=#e3f8c0492f75439b9da83ad6d1b2ccad> STL in Linux</a>
   - <a href=#26c8e296fd794d1ba709e2aaed1c6e9a> General </a>
     - <a href=#fbb597bd7714494c80452c633405716f> Using data</a>
   - <a href=#34bbbd028b4a4f22b39bc6e58a8340db> Processes</a>
     - <a href=#7ccec1f1e9264dea84f2144ecac60450> Download</a>
     - <a href=#009731bb0e3a4fc9985ca3694cbfd938> Boot</a>
       - <a href=#862d87bf33074bb3862da7687e741179> Up to memory - function</a>
       - <a href=#0f4a3ff40b354017ae47bc7f448a56fd> Test </a>
     - <a href=#4a5a60b028854e1684768bd4f76aaad9> Update</a>
     - <a href=#800770a3bba94549940630e05424da72> Delete </a>
     - <a href=#3d61e7bc71d64d49a2554d94ce185615> Common</a>
     - <a href=#0356c3c6a99944259e4568c2688c75ca> Save ~/.stl.d</a>
   - <a href=#f0793221559e4228a27261e1cf1848d0> Files :: `~/.stl.d`</a>
     - <a href=#ffa3f57b11f24fb4beb20d09bf467987> Download </a>
     - <a href=#f7722e66441d47afb52eb2c99af2785a> Boot</a>
       - <a href=#d18b76cd2c9c43a6b1dcdacc548958bb> `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)</a>
       - <a href=#2c351712b0c94e73a5840aea23357353> `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl</a>
     - <a href=#0c547fce27c9443baa9a011fcb7a54cb> Delete</a>
     - <a href=#8b521c6bb58646a0bd9703b10523ea1f> Common</a>
       - <a href=#0de0f264301044be822e74d4ebb1aa3f> `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE </a>
   - <a href=#2fb4169149ba42c9a2db1a3696ea888f> Lexicon </a>
     - <a href=#fdb167f69d5342109f22274c5a1c32ba> Extend name entety</a>
       - <a href=#a0b3d6e0d1c445c89e330cf8108f6dec> From content file or directory</a>
       - <a href=#2a4bf9544b82478db18d64ad742bd74c> From function extend - informaiton</a>
     - <a href=#a60afb6ab2fa410cae2baaac1d928a3d> Error name </a>
     - <a href=#d4718ab1f3e64b0e80ef843388e378a9> Abbriviations</a>
       - <a href=#df67deb459c9447e9cc2b976777f85d4> in value </a>
       - <a href=#3167ea8434d64016b9c06cb6d13b80cc> In Latin</a>
   - <a href=#d00ebc769f9942d8aca99b8e718f2ae8> Data</a>
     - <a href=#205cd51f212b44f3aced04ec47d0997c> Flags</a>
       - <a href=#5677037c238d48c385638b0546ae012e> Global in dr: `~/`</a>
       - <a href=#66340447c78c45b795e185fbde0c2b69> Local in dr: `~/.stl.d/data.d/flag.d`</a>
   - <a href=#9aff75abce6a49b1880a9823a11f235c> Structures</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.ins.d /home/st/.stl.d/README.md 2

PPWD: /home/st/.stl.d/data.d/opus.d/boot.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732441315_24112024164155

DATX: 1732441315
-->


[001.001.first_head.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/001.001.first_head.txt.md)



 <a id="e3f8c0492f75439b9da83ad6d1b2ccad"></a>
# STL in Linux

[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/002.general.d/001.txt.md)



 <a id="26c8e296fd794d1ba709e2aaed1c6e9a"></a>
## General 


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/002.general.d/003.use_data.d/001.txt.md)



 <a id="fbb597bd7714494c80452c633405716f"></a>
### Using data

- BOOT_REPO_PATH определяется при установе STL и используется для дальнейшего определения путей 
    c.e. STL_PATH  


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/003.processes.d/001.txt.md)



 <a id="34bbbd028b4a4f22b39bc6e58a8340db"></a>
## Processes


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/003.processes.d/002.inst.d/001.txt.md)



 <a id="7ccec1f1e9264dea84f2144ecac60450"></a>
### Download
 

[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/003.processes.d/003.boot.d/001.txt.md)



 <a id="009731bb0e3a4fc9985ca3694cbfd938"></a>
### Boot


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/003.processes.d/003.boot.d/002.up_to_mem.d/001.txt.md)



 <a id="862d87bf33074bb3862da7687e741179"></a>
#### Up to memory - function


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/003.processes.d/003.boot.d/003.tst.d/001.txt.md)



 <a id="0f4a3ff40b354017ae47bc7f448a56fd"></a>
#### Test 


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/003.processes.d/004.upd.d/001.txt.md)



 <a id="4a5a60b028854e1684768bd4f76aaad9"></a>
### Update


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/003.processes.d/005.dlt.d/001.txt.md)



 <a id="800770a3bba94549940630e05424da72"></a>
### Delete 


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/003.processes.d/006.comm.d/001.txt.md)



 <a id="3d61e7bc71d64d49a2554d94ce185615"></a>
### Common


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/003.processes.d/007.save.d/001.txt.md)



 <a id="0356c3c6a99944259e4568c2688c75ca"></a>
### Save ~/.stl.d


[001.1L.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/004.files.d/001.1L.txt.md)



 <a id="f0793221559e4228a27261e1cf1848d0"></a>
## Files :: `~/.stl.d`




[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/004.files.d/002.inst.d/001.txt.md)



 <a id="ffa3f57b11f24fb4beb20d09bf467987"></a>
### Download 


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/004.files.d/003.boot.d/001.txt.md)



 <a id="f7722e66441d47afb52eb2c99af2785a"></a>
### Boot
 


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/004.files.d/003.boot.d/002.const.d/001.txt.md)



 <a id="d18b76cd2c9c43a6b1dcdacc548958bb"></a>
#### `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/004.files.d/003.boot.d/003.fn.d/001.txt.md)



 <a id="2c351712b0c94e73a5840aea23357353"></a>
#### `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/004.files.d/004.dlt.d/001.txt.md)



 <a id="0c547fce27c9443baa9a011fcb7a54cb"></a>
### Delete


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/004.files.d/005.comm.d/001.txt.md)



 <a id="8b521c6bb58646a0bd9703b10523ea1f"></a>
### Common


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/004.files.d/005.comm.d/004.util.d/001.txt.md)



 <a id="0de0f264301044be822e74d4ebb1aa3f"></a>
#### `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE 


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/005.lexicon.d/001.txt.md)



 <a id="2fb4169149ba42c9a2db1a3696ea888f"></a>
## Lexicon 


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/005.lexicon.d/002.ext.d/001.txt.md)



 <a id="fdb167f69d5342109f22274c5a1c32ba"></a>
### Extend name entety

[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/005.lexicon.d/002.ext.d/002.from_content.d/001.txt.md)



 <a id="a0b3d6e0d1c445c89e330cf8108f6dec"></a>
#### From content file or directory

- `wnext`
  - `.lst` список
  - `.prc` файл с процедурой
  - `.cnt` контекст
  - `.env` окружение
  - `.hie` пояснение по смыслу - формат .md
  - `.tml` текстовый макет
  - `.man` общие пояснения - формат .md
  - `.tst` тестовый


  - `.ham` хук в обертках над git
  - `.mul` директория содержащая `wnext` директории 

  - `.sil` структура "лес"
  - `.arb` структура "дерево"
  - `.ram` структура "ветка"
  - `.fol` файл "лист"
  - `.grot` структура "дупло" - "кроличья нора"
  - `.repo` структура "коробка"
  
  - `.exa` пример
  - `.anc` файл с сылками


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/005.lexicon.d/002.ext.d/003.from_function.d/001.txt.md)



 <a id="2a4bf9544b82478db18d64ad742bd74c"></a>
#### From function extend - informaiton

- `.ln_src.` - src of `ln srs dist` 

- `.ln_dst.` - dist of `ln src dist` 


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/005.lexicon.d/003.err_name.d/001.txt.md)



 <a id="a60afb6ab2fa410cae2baaac1d928a3d"></a>
### Error name 

    NOT_FILE
    IS_FILE
    NOT_DIR
    IS_DIR


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/005.lexicon.d/004.abbrriviatins.d/001.txt.md)



 <a id="d4718ab1f3e64b0e80ef843388e378a9"></a>
### Abbriviations

    ins -> rcv - в случае вставки entety
    cnx -> res - в случае вставки текста в файл

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
    ptx - postfix
    utl - служебный
    prx_et - prefix for entety (e.c. recommendationSTL for dr @|for fl &)
    ptx_fn - postfix фиксирует принадлежность служебных файлов сфрмированых работой fn
    lext - последнее расширение имени справа 
    2ext - предпоследнее последнее расширение имени справа
    cnx - context 
    res - результат вставки context

[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/005.lexicon.d/004.abbrriviatins.d/002.in_value.d/001.txt.md)



 <a id="df67deb459c9447e9cc2b976777f85d4"></a>
#### in value 

    ins -> rcv - в случае вставки entety
    cnx -> res - в случае вставки текста в файл

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
    ptx - postfix
    utl - служебный
    prx_et - prefix for entety (e.c. recommendationSTL for dr @|for fl &)
    ptx_fn - postfix фиксирует принадлежность служебных файлов сфрмированых работой fn
    lext - последнее расширение имени справа 
    2ext - предпоследнее последнее расширение имени справа
    cnx - context 
    res - результат вставки context

[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/005.lexicon.d/004.abbrriviatins.d/003.in_latin.d/001.txt.md)



 <a id="3167ea8434d64016b9c06cb6d13b80cc"></a>
#### In Latin

    sup                - избыточный
    (apn)appon         - прикреп
    (upn)unpin         - откреп
    (fis)finis         - цель
    fons               - источник
    succ               - успех
    defe               - провал
    conq               - набор
    (cre)creo          - создавть
    (tis)              - тест
    (tmp)tempus        - временный
    (vex)illum         - эталон
    (exa)mple          - пример
    (tml)template      - шаблон
    (agno)agnoscere    - классифицировать
    (noos)noosfere     - ноосфера
    (inge)ingenium     - знания
    (cogi)cogitatio    - мысли
    (enim)enim         - действительно
    (divi)divisio      - деление
    (sepa)separatio    - разделение
    (diff)differentia  - различие
    (defi)definitio    - определение
    (part)partitio     - классификация
    (tabu)tabulatum    - этаж
    (impl)implens      - наполнение
    (mxe)maxime        - важнейший
    (rcr)recreare      - пересобрать
    (obs)obsido        - вкладывать
    (quis)quis         - любой, каждый
    (ine)invenire      - отыскивать
    (ante)ante         - до, предварительно
    (ratis)ratis       - плот
    (quod)quod         - входящая очередь
    (fco)facio         - делать
    (nar)narratio      - рассказ
    (tdec)table de contenu - оглавление 
    (no)ta(m)          - тег
    (s)i(tu)           - окружение, среда
    [nen]t [ci]rcus    - цикл = вращение по кругу
    [f]o[rm]a          - составить, построить по алгоритму
                         - frm_... name fn thear bild for algor 
    [rete]             - сеть
    [f]u[rc]a          - развилка, по именам функций
                            - .frc
    [ab]u[m]brare        - набросок, сайт
                            - .abm

    [ob]e[x]           - запор, зарезервированные переменные и тд
                            - .obx

    [prim]us           - utils after unix
    [secu]ndo          - utils after prim, pst_unix
    [mall]er           - молоток, utils after secundo, pst_secu
    [raqu]el           - ракель, mini [mall]er, min_mall
    [ague]r            - шнек, utils after mall, pst_mall

    [higt]l            - высокий, системный (syll), system code function
    [shor]t            - низкий, подсистемный (syll), use code function

    [gig]no            - рождать, объемлющий элемент к существующему
                          - gig dir - порождающая директория
    [grad]us           - степень 
    [clie]ntela        - зависимость
                          - grad clie: prim secu mall raqu ague
    [syll]aba          - слог - код
                          - grad syll: higt shor

    [sal]             - соль, изменяемые файлы для неизменной обертки
                         - .sal
    [ax]on            - ось
                         - name_nod.ax.ext нередактируемый - только генерируемый
                            - name_nod.ext2.ext структура расширений

    [scae]na          - этап, градации развития взаимозамещающих качеств (используемый но неразвитый ... развитый но неиспользуемый)

    [veri]ficatur     - проверенный, прошлый но используемый, готовый к использованию всеми, продукт
    [prov]vectus      - опережающий, настоящий но неиспользуемый, измененный, тестируемый, в работе
    [absc]endentia    - перспектива, будущий но не будет использован, желаемый, обсуждаемый, идея

    scae_relevance__possibility_of_using: veri prov absc
    scae_complexity_stucture_syll__ease_of_use: prim secu mall raqu ague

    [camp]us          - поле, набор разных относящихся к одному

    camp_type_tst: fs_compare exec_compare

    [nid]us             - гнездо, api wrapper
    [cir]cus            - inner env
    [oll]am             - горшок, contaner for name main.sh -> main.d.oll

    [p]ro[to]        - прототип чего либо

    [tun]ica         - туника обертка

    {mnr}            - minor
        mnr_abstr        - понижение абстракции
    {mjr}            - major
        mjr_abstr        - повышение абстракции
    {sub}            - 
    {sup}            - 

    [el]ige          - выбрать 
                         - el_ выборка по чему либо : el_f_ 

    [c]a[p]e[l]la    - капелла
                         - .cpl файлы сборки с {replacer}

    [nob]            - для новичков

    CRUD+
    
    [pull]           - to local
    [push]           - from local

    [bull]           - to host deploy
    [bush]           - from host 

    [mdul] medulla      - [движок] мозг

    [obc] obiectum      - [аргументы] объект
    [sub] subiectum     - [процедура] субъект
    [aer] aer           - [окружение] воздух
    [ppr] productum     - [глобальная ссылка на результат] продукт

    [sag] sagitta       - [набор файлов] стрела

    [fol] folio folium  - [набор .fol] фолиант лист   
    [hum] humus         - [место роста] почва
    [lux] lux           - [выявление - sh, local dinamic lst, etset. ] 
    [grot] grotto       - [inner dir] грот

    [coll]colloquium    - разговор
    [pett]petitum       - [запрос] просьба
    [rfl]reflexum       - [ответ] рефлекс

    [mitt] mitto        - [вставить] бросать 
    [nit] nito          - [тест] экзамен
    [arn] arena         - [песочница] песок
    [sgm] segmentum     - [образец] сегмент
    [bale] bale         - [сет] тюк
    [soff] sofferre     - [пробовать] мучиться
    [opi] opibus        - [git] ресурсы
    [nm] nomenclatura   - [меню] список
    [ham] hamo          - [хук для opi] крюк 
    [ord] ordine        - [хук в функции] приказ
    [cap] capere        - [поднять в память] получить
    [sit] situ          - [стейт] состояние
    [apr] a priori      - [стартовый] исходный
    [mrc] miraculum     - [образец для подражания] чудо
    [eus] eusimod       - [экранирование] проедставление
    [rgx] regex         - regex
    [ptr] pointer       - [имя] указатель идентификатор
    [elg] elige         - [выбрать] 
    [scr] secare        - [вырезать]
    [scl] scala         - [двусторонняя связь - загрузка выгрузка - занесли вынесли - bcp dpl] лестница 
    [stu] studere       - [учебный] обучаться
    [pau] promptus ad usum - готов к использованию
    [oss] ossa          - [проект] остов 

    [duet] duetto       - [sync] дуэтом
    [coro] coro         - [root] в одиночку

    [diss] dissento     - [разногласие] различие
    [flur] fluor        - [обработка потока] поток
    [flos] flos         - [директория на .ram] цветок 
    [smp] simplex       - [необязательный - like tmp временный] простой
    [foe] foedus        - [синоним git] гадкий
    [iac] iacta         - [создать с удалернием старого] бросить

    [exi] eximo         - [выбрать] вынуть


[001.L1.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/006.data.d/001.L1.txt.md)



 <a id="d00ebc769f9942d8aca99b8e718f2ae8"></a>
## Data


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/006.data.d/002.flags.d/001.txt.md)



 <a id="205cd51f212b44f3aced04ec47d0997c"></a>
### Flags

Acceptable values:

    0 - false 
    1 - true

 <a id="5677037c238d48c385638b0546ae012e"></a>
#### Global in dr: `~/`

- `~/.stl.use.flag` :

    (1|0) :: (abort|not abort) process : `source ~/.stl.d/flow.d/boot.d/boot.sh` at the begining 

 <a id="66340447c78c45b795e185fbde0c2b69"></a>
#### Local in dr: `~/.stl.d/data.d/flag.d`


- `~/.stl.d/data.d/flag.d/stlrc.log.flag` :


    (1|0) :: default 0 :: `source ~/.stl.d/flow.d/boot.d/boot.sh` (`&> ~/.stl.d/data.d/log.d/stlrc.log` | `1>/dev/null`)
     

- `~/.stl.d/data.d/flag.d/git_reset.flag` : 
 

    (1|0) :: default 1 ::(reset | not reset) all git diff :: use in git_flow_functions :: protection mode against changes

[001.L1.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/007.structures.d/001.L1.txt.md)



 <a id="9aff75abce6a49b1880a9823a11f235c"></a>
## Structures





