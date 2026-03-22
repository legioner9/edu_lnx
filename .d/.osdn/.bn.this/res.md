[/c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io.sh//tml_labex.io_dkr.d//dr.md](/c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io.sh//tml_labex.io_dkr.d//dr.md)
grep %%dkr /c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io.sh//tml_labex.io_dkr.d//dr.md
%%dkr -->
grep @@ /c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io.sh//tml_labex.io_dkr.d//dr.md
[/c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io.sh//tml_labex.io_dkr.d//main.md](/c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io.sh//tml_labex.io_dkr.d//main.md)
grep %%dkr /c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io.sh//tml_labex.io_dkr.d//main.md
%%dkr
grep @@ /c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io.sh//tml_labex.io_dkr.d//main.md
@@anc labex.io
[/c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_415202//dr.md](/c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_415202//dr.md)
grep %%dkr /c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_415202//dr.md
%%dkr -->
grep @@ /c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_415202//dr.md
[/c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_418050//dr.md](/c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_418050//dr.md)
grep %%dkr /c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_418050//dr.md
%%dkr -->
grep @@ /c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_418050//dr.md
[/c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_418050//main.md](/c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_418050//main.md)
grep %%dkr /c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_418050//main.md
%%dkr
grep @@ /c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_418050//main.md
@@anc [labex.io](https://labex.io/ru/tutorials/docker-how-to-manage-docker-network-configuration-418050)

    @@cli Список сетей Docker: docker network ls
    @@cli Просмотр конкретной сети: docker network inspect bridge
    @@cli Создание пользовательской сети: docker network create --driver bridge my_custom_network
    @@cli Создание overlay-сети для многохостового взаимодействия: docker network create --driver overlay swarm_network
    @@cli Определение конкретного диапазона IP-адресов: docker network create --subnet=192.168.0.0/16 custom_net
    @@cli Указание сетевого шлюза: docker network create --gateway=192.168.1.1 custom_net
    @@cli Ограничение выделения IP-адресов: docker network create --ip-range=192.168.1.0/24 custom_net
    @@cli Запуск контейнера и подключение к определенной сети: docker run -d --name web_app --network my_custom_network nginx
    @@cli Подключение работающего контейнера к сетиr: docker network connect my_custom_network existing_container
@@cnt Стратегии изоляции сети
@@cnt Конфигурация с несколькими сетями
@@cnt Расширенная конфигурация сети
@@cnt Общие команды для диагностики сети

    @@cli Проверка сетевых настроек контейнера: docker inspect --format='{{.NetworkSettings.IPAddress}}' container_name
    @@cli ## Проверка сетевого взаимодействия: docker exec container_name ping another_container
@@cnt Поток диагностики проблем с подключением
@@cnt отказ подключения - проверить конфигурацию сети
@@cnt падение производительности - анализ производительности
@@cnt изоляция - проверить сегментацию сети

    @@cli проверка конкретной сети: docker network inspect brige
    @@cli Проверка сетевых данных контейнера: docker inspect --format='{{.NetworkSettings.IPAddress}}' container_name
    @@cli Недоступный IP контейнера: docker inspect --format='{{.NetworkSettings.IPAddress}}'
    @@cli Проблемы с картами портов: docker port container_name 
    @@cli Проблемы с разрешением DNS: docker exec container_name nslookup google.com 
    @@cli Тестирование межконтейнерного взаимодействияв: docker exec container1 ping container2_ip 
    @@cli Проверка таблицы маршрутизации: docker exec container_name route -n
    @@cli Определение контейнеров в сети по умолчанию: docker network inspect bridge 
    @@cli Рекомендуется: создать пользовательские сети: docker network create --driver bridge my_custom_network 
    @@cli Правильный синтаксис карты портов: docker run -p 8080:80 nginx 
    @@cli Устранение конфликтов портов: sudo netstat -tuln | grep 8080
    @@cli Просмотр журналов контейнера: docker logs container_name
    @@cli Просмотр журналов контейнера: docker logs container_name
    @@cli Просмотр журналов контейнера: docker logs container_name
    @@cli Просмотр журналов контейнера: docker logs container_name
    @@cli Просмотр журналов контейнера: docker logs container_name
@@cnt Ведение журнала и мониторинг

    @@cli Просмотр журналов контейнера: docker logs container_name
    @@cli Мониторинг журналов в реальном времени: docker logs -f container_name
@@cnt Анализ производительности сети

    @@cli Установка сетевых инструментов: sudo apt-get install net-tools
    @@cli Измерение производительности сети: docker exec container_name iperf3 -c target_container
[/c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_418164//dr.md](/c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_418164//dr.md)
grep %%dkr /c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_418164//dr.md
%%dkr -->
grep @@ /c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_418164//dr.md
[/c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_418164//main.md](/c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_418164//main.md)
grep %%dkr /c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_418164//main.md
%%dkr
grep @@ /c/Users/ProNout/edu_lnx/.d/.osdn/exa//labex.io_418164//main.md
@@anc [labex.io](https://labex.io/ru/tutorials/docker-how-to-restart-docker-service-418164)
@@cnt Перезапуск демона Docker (Docker Daemon)

    @@cli текущий статус сервиса Docker: sudo systemctl status docker
    @@cli перезапустим демон: sudo systemctl restart docker
    @@cli остановим: sudo systemctl stop docker
    @@cli стартуем: sudo systemctl start docker
    @@cli docker restart my-nginx
    @@cli рестарт с задержкой 5c: docker restart my-ngin
    @@cli перезапуск всегда: docker run -d --name my-nginx-always --restart=always -p 80:80 nginx
    @@cli перезапуск после выхода с ошибкой: docker run -d --name my-nginx-always --restart=on-failure -p 80:80 nginx
    @@cli перезапуск после выхода с ошибкой до 5 раз: docker run -d --name my-nginx-on-failure --restart=on-failure:5 -p 80:80 nginx
    @@cli перезапуск если : docker run -d --name my-nginx-on-failure --restart=ounless-stopped -p 80:80 nginx
[/c/Users/ProNout/edu_lnx/.d/.osdn/utils//gig_util.sh//tml_labex.io_dkr.d//dr.md](/c/Users/ProNout/edu_lnx/.d/.osdn/utils//gig_util.sh//tml_labex.io_dkr.d//dr.md)
grep %%dkr /c/Users/ProNout/edu_lnx/.d/.osdn/utils//gig_util.sh//tml_labex.io_dkr.d//dr.md
%%dkr -->
grep @@ /c/Users/ProNout/edu_lnx/.d/.osdn/utils//gig_util.sh//tml_labex.io_dkr.d//dr.md
[/c/Users/ProNout/edu_lnx/.d/.osdn/utils//gig_util.sh//tml_labex.io_dkr.d//main.md](/c/Users/ProNout/edu_lnx/.d/.osdn/utils//gig_util.sh//tml_labex.io_dkr.d//main.md)
grep %%dkr /c/Users/ProNout/edu_lnx/.d/.osdn/utils//gig_util.sh//tml_labex.io_dkr.d//main.md
%%dkr
grep @@ /c/Users/ProNout/edu_lnx/.d/.osdn/utils//gig_util.sh//tml_labex.io_dkr.d//main.md
@@anc labex.io
