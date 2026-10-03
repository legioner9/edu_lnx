
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
 - <a href=#34f48564e4224352898dae6b655b4208> Chapt examp</a>
 - <a href=#78fe1afda29b45b395da9f6150818696> Рекомендации RCM</a>
   - <a href=#20d31d5baeb748e39428c7818b3328db> RCM_1 (изменения в оригинал)</a>
   - <a href=#0159cc701f48446b892a1caf237fc74a> RCM_2 (служебные файлы)</a>
   - <a href=#15dba276082a498494a6e6994477afe5> RCM_3 (cокращения)</a>
   - <a href=#e0d60b468f924ae1b32a2adc4aeec7af> RCM_4 (notmast_butlast)</a>
   - <a href=#3e39a5f5c6f645f9a7eb35408aef5f27> RCM_5 (mast_def_args)</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/stl/.d/.opus/readme.opus/_cntx.ins.d/200.local_repo.d/002.nbash_opus.d/.ins_dr/001.examp.d/cnx.d /home/st/REPOBARE/_repo/stl/.d/.opus/readme.opus/_cntx.ins.d/200.local_repo.d/002.nbash_opus.d/.ins_dr/001.examp.d/res.md 2

PPWD: /home/st/REPOBARE/_repo/stl/.d/.opus/readme.opus/_cntx.ins.d/200.local_repo.d/002.nbash_opus.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732621439_26112024184359

DATX: 1732621439
-->


[001.chapt.txt.md](cnx.d/001.chapt.txt.md)



 <a id="34f48564e4224352898dae6b655b4208"></a>
# Chapt examp
    

[001.pref.txt.md](cnx.d/002.for_tst.d/001.pref.txt.md)



 <a id="78fe1afda29b45b395da9f6150818696"></a>
# Рекомендации RCM

    

[002.rcm_1.txt.md](cnx.d/002.for_tst.d/002.rcm_1.txt.md)



 <a id="20d31d5baeb748e39428c7818b3328db"></a>
## RCM_1 (изменения в оригинал)

в оригинал вносим изменения - копия для истории изменений
    

[003.rcm_2.txt.md](cnx.d/002.for_tst.d/003.rcm_2.txt.md)



 <a id="0159cc701f48446b892a1caf237fc74a"></a>
## RCM_2 (служебные файлы)

при работе утилиты формировать следующие файлы рядом с результатами работы
  - лог
    - отдельно лог ошибок
  - ридми 
    - readme.stnd.md
    - readme.flow.md
  - сорс файлы для запуска в командной строке
    

[004.rcm_3.txt.md](cnx.d/002.for_tst.d/004.rcm_3.txt.md)



 <a id="15dba276082a498494a6e6994477afe5"></a>
## RCM_3 (cокращения)

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
    prx_et - prefix for entety (e.c. recommendationSTL for dr @|for fl &)
    ptx_fn - postfix фиксирует принадлежность служебных файлов сфрмированых работой fn
    lext - последнее расширение имени справа 
    cnx - context 
    res - результат вставки context
    

[005.rcm_4.txt.md](cnx.d/002.for_tst.d/005.rcm_4.txt.md)



 <a id="e0d60b468f924ae1b32a2adc4aeec7af"></a>
## RCM_4 (notmast_butlast)

- наличие последнего аргумента для отладки функции 


[006.rcm_5.txt.md](cnx.d/002.for_tst.d/006.rcm_5.txt.md)



 <a id="3e39a5f5c6f645f9a7eb35408aef5f27"></a>
## RCM_5 (mast_def_args)

- используемые аргументы в функции не могут быть пустыми при вызове
  - допускается замена на константу e.c. @ 




