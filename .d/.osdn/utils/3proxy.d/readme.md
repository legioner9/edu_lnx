&&fl описание 3proxy разными конфигами

@@anc https://www.securitylab.ru/blog/personal/Bitshield/355641.php

@@cli конфиг socks5 с авторизацией и пользователями

    # DNS (рекомендуется) 
    nserver 1.1.1.1 
    nserver 8.8.8.8 
    nscache 65536 
    # Логи и ограничения 
    log /var/log/3proxy/3proxy.log D 
    auth strong users user1:CL:password1 user2:CL:password2 allow user1,user2 
    socks -p1080

auth strong - включаем авторизацию по логину/паролю.

users - задаём пользователей (user1 и user2 с паролями).

allow user1,user2 - только этим пользователям разрешён доступ.

@@cli Множественные прокси на разных портах с ограничением скорости

    auth strong 
    users alice:CL:secret bob:CL:qwerty 

    # 1 Мбит/с (1048576 бит/с) для пользователя alice 
    # Синтаксис: bandlim(in|out) <bitrate> <userlist> <sourcelist> <targetlist> <targetportlist> <commandlist> 
    bandlimin 1048576 alice * * * * 
    bandlimout 1048576 alice * * * *

    allow alice 
    proxy -p8080 

    flush 
    allow bob socks -p1080



