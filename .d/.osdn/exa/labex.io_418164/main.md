&&fl Как перезапустить службу Docker

@@anc [labex.io](https://labex.io/ru/tutorials/docker-how-to-restart-docker-service-418164)

@@cnt Перезапуск демона Docker (Docker Daemon)

    @@cli текущий статус сервиса Docker: sudo systemctl status docker

    @@cli перезапустим демон: sudo systemctl restart docker

    @@cli остановим: sudo systemctl stop docker

    @@cli стартуем: sudo systemctl start docker

    @@cli docker restart my-nginx

    @@cli рестарт с задержкой 5c: docker restart my-ngin

&&fl Настройка политик перезапуска контейнеров (Container Restart Policies)

    @@cli перезапуск всегда: docker run -d --name my-nginx-always --restart=always -p 80:80 nginx
    @@cli перезапуск после выхода с ошибкой: docker run -d --name my-nginx-always --restart=on-failure -p 80:80 nginx
    @@cli перезапуск после выхода с ошибкой до 5 раз: docker run -d --name my-nginx-on-failure --restart=on-failure:5 -p 80:80 nginx
    @@cli перезапуск если : docker run -d --name my-nginx-on-failure --restart=ounless-stopped -p 80:80 nginx


Другие распространенные политики перезапуска включают:


`no`: Не перезапускать контейнер автоматически (по умолчанию).

`on-failure`: Перезапускать контейнер только в том случае, если он завершается с ненулевым кодом выхода (указывающим на ошибку). Вы можете дополнительно указать максимальное количество попыток перезапуска (например, on-failure:5).

`unless-stopped`: Всегда перезапускать контейнер, если он не был явно остановлен пользователем или демон Docker не был остановлен.




%%dkr