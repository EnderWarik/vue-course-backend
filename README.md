# OnlinePizza API

REST API для курса "Vue 3. Разработка клиентских приложений". Использует [json-server](https://github.com/typicode/json-server) для имитации бэкенда.

## Запуск

```bash
git clone https://github.com/EnderWarik/vue-course-backend.git
cd vue-course-backend
docker-compose up
```

API будет доступен по адресу `http://localhost:3000`.

## Эндпоинты

| Метод | URL | Описание |
|-------|-----|----------|
| GET | /dough | Типы теста |
| GET | /sizes | Размеры пиццы |
| GET | /sauces | Соусы |
| GET | /ingredients | Ингредиенты |
| GET | /extras | Дополнительные товары |
| GET | /orders | Список заказов |
| POST | /orders | Создать заказ |
| GET | /addresses | Адреса доставки |
| POST | /addresses | Добавить адрес |
| PUT | /addresses/:id | Обновить адрес |
| GET | /users | Пользователи |

## Авторизация

Тестовый пользователь:

```
email: user@example.com
password: password123
```

Для проверки логина используйте фильтрацию json-server:

```
GET /users?email=user@example.com&password=password123
```

## Данные

Все данные хранятся в `db.json`. Файл монтируется как volume — изменения через API (POST, PUT, DELETE) сохраняются между перезапусками.

## Без Docker

```bash
npm install -g json-server
json-server --port 3000 --watch db.json
```
