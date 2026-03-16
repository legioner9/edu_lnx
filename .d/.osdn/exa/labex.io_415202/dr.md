$$anc labex.io nnn

$$cnt Как проверить статус контейнеров Docker

     $$cli  docker run --name my-nginx -d -p 8080:80 nginx

$$cnt Статус контейнера с форматированием

    $$cli  docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"

$$cnt  Подробная информация о контейнере с помощью docker inspect

    $$cli  docker inspect my-nginx
    $$cli  docker inspect --format='{{.State.Status}}' my-nginx

{{ range .State }}
   {{ . \n}}
{{ end }}

docker inspect --format='{{ range .State }}{{ . }}{{ end }}' my-nginx














%%dkr
