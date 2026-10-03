&&fl Main oneline cli command

@@cnt treat once_for_command

    @@cli все рвботающие конт : docker ps
    @@cli все конт полная информация : docker ps -a
    @@cli все конт только id : docker ps -q
    @@cli run bash in nm_uunt : docker run -it --name nmc_uunt ubuntu bash
    @@cli docker exec -it nmc_uunt bash

    


@@cnt treat mani_for_command

    @@cli остановка всех конт : docker container ls -q | xargs -r docker container stop

    @@cli Удаление Docker контейнеров по маске : docker rm $(docker ps -a | grep «шаблон» | awk '{print $1}' | xargs docker rm)












%%dkr