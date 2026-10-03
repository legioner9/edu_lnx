#!/bin/bash

# Файл: read_retry.sh
# Несколько попыток ввода с таймаутом
f() {
    local TIMEOUT=5
    local TRIES=3
    local attempt=1

    while [ $attempt -le $TRIES ]; do
        echo "Попытка $attempt/$TRIES: введите пароль (5 секунд на ответ):"
        if read -tr "$TIMEOUT" password; then
            if [ "$password" == "s" ]; then
                echo "Доступ разрешен. Добро пожаловать!"
                break
            else
                echo "Неверный пароль. Попробуйте еще раз."
            fi
        else
            echo "Таймаут! Вы слишком медлили."
        fi
        attempt=$((attempt + 1))
    done

    if [ $attempt -gt $TRIES ]; then
        echo "Слишком много попыток. Доступ запрещен."
    fi
}

f
