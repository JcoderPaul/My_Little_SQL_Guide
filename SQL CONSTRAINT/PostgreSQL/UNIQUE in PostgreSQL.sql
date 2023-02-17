-- Создаем таблицу с ограничениями на данные содержащиеся в ней:
-- PRIMARY KEY - Уникальный цифровой идентификатор SERIAL с автоинкрементом
-- UNIQUE - содержимое ячейки должно быть уникальным
-- NOT NULL - содержимое ячейки не может пустовать
-- !!! Последовательность полей всегда важна !!!

CREATE TABLE employee
(
    id         SERIAL PRIMARY KEY,
    first_name VARCHAR(128) NOT NULL,
    last_name  VARCHAR(128) NOT NULL,
    salary     INT,
    UNIQUE (first_name, last_name)
);