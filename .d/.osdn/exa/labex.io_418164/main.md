&&fl Как перезапустить службу Docker

@@anc [labex.io](https://labex.io/ru/tutorials/docker-how-to-restart-docker-service-418164)

$$cnt Перезапуск демона Docker (Docker Daemon)

    $$cli текущий статус сервиса Docker: sudo systemctl status docker

    $$cli перезапустим демон: sudo systemctl restart docker

    $$cli остановим: sudo systemctl stop docker

    $$cli стартуем: sudo systemctl start docker

    $$cli docker restart my-nginx

    $$cli рестарт с задержкой 5c: docker restart my-ngin
%%dkr