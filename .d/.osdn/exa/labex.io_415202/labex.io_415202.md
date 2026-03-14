[labex.io 415202](https://labex.io/ru/tutorials/docker-how-to-configure-a-docker-container-to-use-the-host-network-415202)

$$cnt Как настроить контейнер Docker для использования сети хоста

$$cnt Вывести список всех сетей Docker `docker network ls`

    $$cli docker network ls

    NETWORK ID     NAME             DRIVER    SCOPE
    1bfeb9b0e651   bridge           bridge    local
    c66a44a8120b   host             host      local
    81d179bb9c80   in_dkr_default   bridge    local
    7a8c22493315   none             null      local
    10da4fbe5b59   python_default   bridge    local

$$ Docker предоставляет три стандартные сети: bridge host none

bridge: Стандартная сеть для контейнеров
host: Использует сеть хоста напрямую
none: Без сети (контейнеры изолированы)
