#

### \<OPUS_PATH>/cntx.res.md итоговый файл - результат сборки 
### \<OPUS_PATH>/cntx.ins.d директория с контентом для итогого файла
### \<OPUS_PATH>/_exa.ufl9 директория с примерами и образцами процессов сборщика 
### \<OPUS_PATH>/.d директория сборщика
### \<OPUS_PATH>/.d/.lst/cntx.res.copy.lst лист с копиями cntx.res.md 
### \<OPUS_PATH>/.d/.lst/rbld.in.file.lst лист с файлами пересчета внутренних файлов в cntx.ins.d
### \<OPUS_PATH>/_rbld_res_md.sh файл запуска сборщика 
    - пересчитывает внутренние файлы по списку \<OPUS_PATH>/.d/.lst/cntx.res.copy.lst
    - gig cntx.ins.d 
    - gig копии cntx.ins.d файлы по списку \<OPUS_PATH>/.d/.lst/rbld.in.file.lst с правильными относительными путями 