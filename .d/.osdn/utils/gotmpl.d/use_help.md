&& help and use gotmpl.util

bash
gotmpl [опции] [данные] шаблон [шаблон2 ...]
Ключевые опции:

-d <файл> — указать файл с данными (YAML/JSON/HCL/TOML);

-i <файл> или -i - — прочитать данные из файла или из stdin;

-o <файл> — записать результат в указанный файл вместо stdout;

--logtostderr — выводить логи ошибок в stderr (полезно при отладке);

-h — показать справку по использованию.

Примеры использования

@@cnt Пример 1. Простая подстановка из YAML‑файла

Файл данных config.yml:

    app_name: "MyApp"
    port: 8080
    debug: true

Шаблон server.conf.tmpl:

    server {
    name = "{{.app_name}}"
    listen = {{.port}}
    debug = {{.debug}}
    }

    @@cli gotmpl -d config.yml server.conf.tmpl > server.conf

Результат в server.conf:

    server {
      name = "MyApp"
      listen = 8080
      debug = true
    }

@@cnt Пример 2. Данные из stdin в формате JSON

Шаблон version.tmpl:

    Application version: {{.version}}
    Environment: {{.env}}

    
    @@cli  echo '{"version": "1.2.3", "env": "prod"}' | gotmpl -i - version.tmpl

Вывод в stdout:
   
    Application version: 1.2.3
    Environment: prod

@@cnt Пример 3. Запись результата в файл напрямую

    @@cli  gotmpl -d settings.json -o output.txt template.tmpl

@@cnt Пример 4. Несколько шаблонов

Первый шаблон (main.tmpl) выполняется, остальные могут быть подключены внутри него через действие template.

    @@cli  gotmpl -d data.yaml main.tmpl header.tmpl footer.tmpl > full.html

@@cnt Пример 5. Передача данных прямо в командной строке

    @@cli  gotmpl Name=Alice Age=30 greeting.tmpl

greeting.tmpl:

    Hello, {{.Name}}! You are {{.Age}} years old.

stdout:

    Hello, Alice! You are 30 years old.

@@cnt Особенности работы с данными

Порядок парсинга: утилита пытается последовательно применить парсеры для YAML, JSON, HCL и TOML; берёт первый успешный результат.

Данные внутри шаблона доступны через точку: {{.ключ}}.

Поддерживаются функции Sprig (например, lowerFirst, upperFirst, absPath и др.).

Есть встроенные переменные: __file__ (имя выходного файла), cwd() (текущая директория), args() (аргументы командной строки) и т. д.