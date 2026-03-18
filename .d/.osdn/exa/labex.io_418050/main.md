&&fl Настройка сети Docker: руководство

@@anc [labex.io](https://labex.io/ru/tutorials/docker-how-to-manage-docker-network-configuration-418050)

$$cnt Сетевые драйверы табл

Сетевой драйвер	    Описание	                        Сценарий использования
bridge	            Драйвер сети по умолчанию	        Контейнеры на одном хосте
host	            Прямой доступ к сети хоста	        Приложения с критическими требованиями к производительности
none	            Отсутствие сетевого подключения	    Изолированные контейнеры
overlay	            Многохостовая сеть	                Кластеры Docker Swarm

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

    ## Создание нескольких сетей
    docker network create frontend_net
    docker network create backend_net
    
    ## Запуск контейнеров в определенных сетях
    docker run -d --name frontend --network frontend_net web_frontend
    docker run -d --name backend --network backend_net database_service

@@cnt Расширенная конфигурация сети

    ## Картирование порта контейнера на порт хоста
    docker run -d -p 8080:80 --name web_server nginx
    
    ## Картирование на определенный интерфейс хоста
    docker run -d -p 127.0.0.1:8080:80 web_application

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


    
    










%%dkr