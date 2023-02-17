-- Создаем таблицу с ограничениями на данные содержащиеся в ней:
-- PRIMARY KEY - Уникальный цифровой идентификатор
-- UNIQUE - содержимое ячейки должно быть уникальным
-- NOT NULL - содержимое ячейки не может пустовать
-- CHECK - проверка при внесении данных, в нашем случае задан диапазон дат

CREATE TABLE company_storage.company
(
    id   INT,
    name VARCHAR(128) UNIQUE NOT NULL,
    date DATE                NOT NULL CHECK (date > '1995-01-01' AND date < '2020-01-01'),
    PRIMARY KEY (id),
    UNIQUE (name, date)
);