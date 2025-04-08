# Telegram Proxy

Скрипт для быстрой настройки Telegram Proxy.

Используется [официальный Docker-образ](https://hub.docker.com/r/telegrammessenger/proxy/) от Telegram.

## Как пользоваться

Установите Docker:

```sh
curl -sSL https://get.docker.com/ | sh
```

Склонируйте репозиторий и перейдите в директорию telegram-proxy:

```sh
git clone https://github.com/azdaev/telegram-proxy.git
cd telegram-proxy
```

Выполните команду для запуска прокси:

```sh
./proxy.sh start
```

Посмотрите логи и найдите ссылку для добавления прокси:

```sh
./proxy.sh logs
```

## Команды

- `start` — запустить прокси
- `stop` — остановить прокси
- `status` — статус (запущен / остановлен)
- `remove` — удалить контейнер с прокси
- `logs` — показать логи

## Как указать secret и tag

Можно указать secret и tag c помощью `.env`-файла — это необходимо для указания promoted-канала. Для этого скопируйте файл `.env.example` в `.env` и укажите необходимые параметры.

```
cp .env.example .env
```

Перезапустите прокси:

```sh
./proxy stop & ./proxy start
```

Promoted-канал указывается в боте [@MTProxybot](https://t.me/MTProxybot).
