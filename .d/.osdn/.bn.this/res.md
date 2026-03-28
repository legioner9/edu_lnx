[/c/Users/ProNout/edu_lnx/.d/.osdn/exa/labex.io.sh/new_nnndir_dkr.sh](/c/Users/ProNout/edu_lnx/.d/.osdn/exa/labex.io.sh/new_nnndir_dkr.sh)
# &&&sh gig labex.io dr for exa

[/c/Users/ProNout/edu_lnx/.d/.osdn/exa/labex.io.sh/tml_labex.io_dkr.d/main.md](/c/Users/ProNout/edu_lnx/.d/.osdn/exa/labex.io.sh/tml_labex.io_dkr.d/main.md)
&&&fl 'fl'
%%%dkr

[/c/Users/ProNout/edu_lnx/.d/.osdn/exa/labex.io_415202/labex.io_nnn.md](/c/Users/ProNout/edu_lnx/.d/.osdn/exa/labex.io_415202/labex.io_nnn.md)
@@@anc [labex.io 415202](https://labex.io/ru/tutorials/docker-how-to-configure-a-docker-container-to-use-the-host-network-415202)
&&&fl Как настроить контейнер Docker для использования сети хоста
@@@cnt Вывести список всех сетей Docker `docker network ls`
    @@@cli docker network ls
@@@cnt Docker предоставляет три стандартные сети: bridge host none

[/c/Users/ProNout/edu_lnx/.d/.osdn/exa/labex.io_418050/main.md](/c/Users/ProNout/edu_lnx/.d/.osdn/exa/labex.io_418050/main.md)
&&&fl Настройка сети Docker: руководство
@@@anc [labex.io](https://labex.io/ru/tutorials/docker-how-to-manage-docker-network-configuration-418050)
@@@cnt Сетевые драйверы табл
    @@@cli Список сетей Docker: docker network ls
    @@@cli Просмотр конкретной сети: docker network inspect bridge
    @@@cli Создание пользовательской сети: docker network create --driver bridge my_custom_network
    @@@cli Создание overlay-сети для многохостового взаимодействия: docker network create --driver overlay swarm_network
    @@@cli Определение конкретного диапазона IP-адресов: docker network create --subnet=192.168.0.0/16 custom_net
    @@@cli Указание сетевого шлюза: docker network create --gateway=192.168.1.1 custom_net
    @@@cli Ограничение выделения IP-адресов: docker network create --ip-range=192.168.1.0/24 custom_net
    @@@cli Запуск контейнера и подключение к определенной сети: docker run -d --name web_app --network my_custom_network nginx
    @@@cli Подключение работающего контейнера к сетиr: docker network connect my_custom_network existing_container
@@@cnt Стратегии изоляции сети
@@@cnt Конфигурация с несколькими сетями
@@@cnt Расширенная конфигурация сети
@@@cnt Общие команды для диагностики сети
    @@@cli Проверка сетевых настроек контейнера: docker inspect --format='{{.NetworkSettings.IPAddress}}' container_name
    @@@cli ## Проверка сетевого взаимодействия: docker exec container_name ping another_container
@@@cnt Поток диагностики проблем с подключением
@@@cnt отказ подключения - проверить конфигурацию сети
@@@cnt падение производительности - анализ производительности
@@@cnt изоляция - проверить сегментацию сети
    @@@cli проверка конкретной сети: docker network inspect brige
    @@@cli Проверка сетевых данных контейнера: docker inspect --format='{{.NetworkSettings.IPAddress}}' container_name
    @@@cli Недоступный IP контейнера: docker inspect --format='{{.NetworkSettings.IPAddress}}'
    @@@cli Проблемы с картами портов: docker port container_name 
    @@@cli Проблемы с разрешением DNS: docker exec container_name nslookup google.com 
    @@@cli Тестирование межконтейнерного взаимодействияв: docker exec container1 ping container2_ip 
    @@@cli Проверка таблицы маршрутизации: docker exec container_name route -n
    @@@cli Определение контейнеров в сети по умолчанию: docker network inspect bridge 
    @@@cli Рекомендуется: создать пользовательские сети: docker network create --driver bridge my_custom_network 
    @@@cli Правильный синтаксис карты портов: docker run -p 8080:80 nginx 
    @@@cli Устранение конфликтов портов: sudo netstat -tuln | grep 8080
    @@@cli Просмотр журналов контейнера: docker logs container_name
    @@@cli Просмотр журналов контейнера: docker logs container_name
    @@@cli Просмотр журналов контейнера: docker logs container_name
    @@@cli Просмотр журналов контейнера: docker logs container_name
    @@@cli Просмотр журналов контейнера: docker logs container_name
@@@cnt Ведение журнала и мониторинг
    @@@cli Просмотр журналов контейнера: docker logs container_name
    @@@cli Мониторинг журналов в реальном времени: docker logs -f container_name
@@@cnt Анализ производительности сети
    @@@cli Установка сетевых инструментов: sudo apt-get install net-tools
    @@@cli Измерение производительности сети: docker exec container_name iperf3 -c target_container
%%%dkr

[/c/Users/ProNout/edu_lnx/.d/.osdn/exa/labex.io_418164/main.md](/c/Users/ProNout/edu_lnx/.d/.osdn/exa/labex.io_418164/main.md)
@@@anc [labex.io](https://labex.io/ru/tutorials/docker-how-to-restart-docker-service-418164)
@@@cnt Перезапуск демона Docker (Docker Daemon)
    @@@cli текущий статус сервиса Docker: sudo systemctl status docker
    @@@cli перезапустим демон: sudo systemctl restart docker
    @@@cli остановим: sudo systemctl stop docker
    @@@cli стартуем: sudo systemctl start docker
    @@@cli docker restart my-nginx
    @@@cli рестарт с задержкой 5c: docker restart my-ngin
    @@@cli перезапуск всегда: docker run -d --name my-nginx-always --restart=always -p 80:80 nginx
    @@@cli перезапуск после выхода с ошибкой: docker run -d --name my-nginx-always --restart=on-failure -p 80:80 nginx
    @@@cli перезапуск после выхода с ошибкой до 5 раз: docker run -d --name my-nginx-on-failure --restart=on-failure:5 -p 80:80 nginx
    @@@cli перезапуск если : docker run -d --name my-nginx-on-failure --restart=ounless-stopped -p 80:80 nginx
%%%dkr

[/c/Users/ProNout/edu_lnx/.d/.osdn/exa/labex.io_dkr/dr.md](/c/Users/ProNout/edu_lnx/.d/.osdn/exa/labex.io_dkr/dr.md)
&&&fl site for all linux https://labex.io
@@@anc https://labex.io/ru/tutorials/category/docker
%%%dcr

[/c/Users/ProNout/edu_lnx/.d/.osdn/techno/go_txt_formatter/1.md](/c/Users/ProNout/edu_lnx/.d/.osdn/techno/go_txt_formatter/1.md)
&&&fl Шаблонизатор GO text template для новичков
@@@anc [Шаблонизатор](https://habr.com/ru/articles/792802/)

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/3proxy.d/readme.md](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/3proxy.d/readme.md)
&&&fl описание 3proxy разными конфигами
@@@anc https://www.securitylab.ru/blog/personal/Bitshield/355641.php
@@@cli конфиг socks5 с авторизацией и пользователями
@@@cli Множественные прокси на разных портах с ограничением скорости
%%%proxy

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/awk.d/main.man](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/awk.d/main.man)
&&&fl awk commands
    @@@cli Вывести содержимое из файла столбца по имени столбца : awk -v col=COL_NAME 'NR==1{for(i=1;i<=NF;i++){if($i==col){c=i;break}} print $c} NR>1{print $c}' file.txt

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/gig_util.sh/new_util_dkr.sh](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/gig_util.sh/new_util_dkr.sh)
# &&&sh gig labex.io dir for dir exa

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/gig_util.sh/tml_labex.io_dkr.d/dr.md](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/gig_util.sh/tml_labex.io_dkr.d/dr.md)
<!-- &&&dr
%%%dkr -->

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/gig_util.sh/tml_labex.io_dkr.d/main.md](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/gig_util.sh/tml_labex.io_dkr.d/main.md)
&&&fl 'fl'
@@@anc labex.io
@@@cnt 'cnt'
%%%dkr

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/gotmpl.d/install.md](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/gotmpl.d/install.md)
&&&fl install and use gotmpl

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/gotmpl.d/use_help.md](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/gotmpl.d/use_help.md)
&&&fl help and use gotmpl.util
@@@cnt Пример 1. Простая подстановка из YAML‑файла
    @@@cli gotmpl -d config.yml server.conf.tmpl > server.conf
@@@cnt Пример 2. Данные из stdin в формате JSON
    @@@cli  echo '{"version": "1.2.3", "env": "prod"}' | gotmpl -i - version.tmpl
@@@cnt Пример 3. Запись результата в файл напрямую
    @@@cli  gotmpl -d settings.json -o output.txt template.tmpl
@@@cnt Пример 4. Несколько шаблонов
    @@@cli  gotmpl -d data.yaml main.tmpl header.tmpl footer.tmpl > full.html
@@@cnt Пример 5. Передача данных прямо в командной строке
    @@@cli  gotmpl Name=Alice Age=30 greeting.tmpl
@@@cnt Особенности работы с данными

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/jq.d/jq.man](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/jq.d/jq.man)
 &&&fl jq cli pretyer json
 @@@cnt jq - json to nice color output   

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/mtp_proxy/dr.md](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/mtp_proxy/dr.md)
&&&dr mtp_proxy for telegram
%%%proxy

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/mtp_proxy/mtp_install_stl.sh](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/mtp_proxy/mtp_install_stl.sh)
# %%%fl install mtp_proxy fo telegram

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/ovpn.d/dr.md](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/ovpn.d/dr.md)
&&&dr open_vpn install
%%%vpn

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/ovpn.d/new_inst_ovpn.man](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/ovpn.d/new_inst_ovpn.man)
&&&fl install open_vpn NEW

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/ovpn.d/nyr_inst_ovpn.man](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/ovpn.d/nyr_inst_ovpn.man)
&&&fl install open_vpn OLD

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/rocket.chat.d/dr.md](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/rocket.chat.d/dr.md)
&&&dr rocket.chat
%%%chat

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/scp.d/dr.md](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/scp.d/dr.md)
&&&dr scp util
%%%utl

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/scp.d/scp.man](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/scp.d/scp.man)
&&&fl scp example

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/sshfs.d/ancs.md](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/sshfs.d/ancs.md)
&&&fl Подключение и настройка SSHFS в Linux
@@@anc [Подключение и настройка SSHFS в Linux](https://losst.pro/podklyuchenie-i-nastrojka-sshfs-v-linux) 

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/sshfs.d/dr.md](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/sshfs.d/dr.md)
&&&dr sshfs util
%%%utl

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/tg_ws_proxy/dr.md](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/tg_ws_proxy/dr.md)
&&&dr Подключение и настройка SSHFS в Linux
%%%proxy

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/tox.chat.d/dr.md](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/tox.chat.d/dr.md)
&&&dr tox chat
%%%chat

[/c/Users/ProNout/edu_lnx/.d/.osdn/utils/wgrd.d/dr.md](/c/Users/ProNout/edu_lnx/.d/.osdn/utils/wgrd.d/dr.md)
&&&dr wireguard vpn
%%%vpn

