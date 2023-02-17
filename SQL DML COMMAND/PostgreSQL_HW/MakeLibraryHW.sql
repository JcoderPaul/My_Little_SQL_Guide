-- *** Создание таблиц базы данных ***

-- Создаем таблицу author
-- id первичный ключ

CREATE TABLE author
(
    id         SERIAL PRIMARY KEY,
    first_name VARCHAR(128) NOT NULL,
    last_name  VARCHAR(128) NOT NULL
);

-- Создаем таблицу author
-- Внешний ключ - id из таблицы author
-- С условием ON DELETE CASCADE - т.е. при удалении автора 
-- с неким id все его книги будут удалены из таблицы book   

CREATE TABLE book
(
    id        BIGSERIAL PRIMARY KEY,
    name      VARCHAR(128) NOT NULL,
    year      SMALLINT     NOT NULL,
    pages     SMALLINT     NOT NULL,
    author_id INT REFERENCES author (id) ON DELETE CASCADE
);

-- Заполняем каталог (таблицу) авторов

INSERT INTO author (first_name, last_name)
VALUES ('Кей', 'Хорстманн'),
       ('Стивен', 'Кови'),
       ('Тони', 'Роббинс'),
       ('Наполеон', 'Хилл'),
       ('Роберт', 'Кийосаки'),
       ('Дейл', 'Карнеги');

-- Проверяем визуально внесенные данные

select *
from author;

-- Заполняем таблицу book
-- Поле author_id, заполняем при помощи SELECT (запрос в запросе)   

insert into book (name, year, pages, author_id)
values ('Java. Библиотеку профессионала. Том 1', 2010, 1102, (SELECT id FROM author WHERE last_name = 'Хорстманн')),
       ('Java. Библиотеку профессионала. Том 2', 2012, 954, (SELECT id FROM author WHERE last_name = 'Хорстманн')),
       ('Java SE 8. Вводный курс', 2015, 203, (SELECT id FROM author WHERE last_name = 'Хорстманн')),
       ('7 навыков высокоэффективных людей', 1989, 396, (SELECT id FROM author WHERE last_name = 'Кови')),
       ('Разбуди в себе исполина', 1991, 576, (SELECT id FROM author WHERE last_name = 'Роббинс')),
       ('Думай и богатей', 1937, 336, (SELECT id FROM author WHERE last_name = 'Хилл')),
       ('Богатый папа, бедный папа', 1997, 352, (SELECT id FROM author WHERE last_name = 'Кийосаки')),
       ('Квадрант денежного потока', 1998, 368, (SELECT id FROM author WHERE last_name = 'Кийосаки')),
       ('Как перестать беспокоиться и начать жить', 1948, 368, (SELECT id FROM author WHERE last_name = 'Карнеги')),
       ('Как завоевывать друзей и оказывать влияние на людей', 1936, 352,
        (SELECT id FROM author WHERE last_name = 'Карнеги'));

-- *** ЗАДАНИЕ ***

-- TASK 1. Написать запрос, выбирающий: название книги, год и имя автора,
--      отсортированные по году издания книги в возрастающем порядке.
--      Написать тот же запрос, но для убывающего порядка.

SELECT b.name,
       b.year,
--        b.author_id,
       (SELECT a.first_name FROM author a WHERE a.id = b.author_id)
FROM book b
ORDER BY b.year DESC;

-- В запросе применяются псевдонимы AS - book b и author a    

-- TASK 2. Написать запрос, выбирающий количество книг у заданного автора, например Кей Хорстманн

SELECT count(*)
FROM book
WHERE author_id IN (SELECT id FROM author WHERE first_name = 'Кей');

-- TASK 3. Написать запрос, выбирающий книги, у которых количество страниц больше среднего количества 
-- страниц по всем книгам

SELECT *
FROM book
WHERE pages > (SELECT avg(pages)
               FROM book);

-- Посмотрим среднее количество страниц по всем книгам

SELECT avg(pages)
FROM book;

-- TASK 4. Написать запрос, выбирающий 5 самых старых книг 
-- Дополнить запрос и посчитать суммарное количество страниц среди этих книг

-- Запрос в запросе, сначала выбираем все книги и сортируем - внутренний SELECT
-- берем верхние 5, т.е. самые старые. Данному SELECT - у присваиваем ALIAS
-- Внешний SELECT производит подсчет количества страниц у выбранных книг.

SELECT sum(t.pages)
FROM (SELECT pages
      FROM book
      ORDER BY year
      LIMIT 5) t;

-- Выбрать все книги отсортированные по годам и вывести (получить) первые 5

SELECT *
FROM book
ORDER BY year
LIMIT 5;

-- TASK 5. Написать запрос, изменяющий количество страниц у книги с id = 2

-- Изменяем содержимое поля pages у записи с id = 2 в таблице book, увеличив
-- его на 25. Возвращаем "на экран" результат замены.    

UPDATE book
SET pages = pages + 25
WHERE id = 2
    RETURNING name, year, pages;

-- TASK 6. Написать запрос, удаляющий автора, который написал самую большую книгу

-- В данном случае у нас будет серия вложенных друг в друга запросов:
-- Сначала находим книгу с MAX количество страниц
-- Затем находим автора книги с самым большим MAX количеством страниц
-- Затем удаляем автора совместив эти два SELECT - а  
-- См. простые подзапросы ниже

-- Реализация запроса на удаление самого плодовитого автора (MAX страниц в книге)

DELETE FROM book
WHERE author_id = (SELECT author_id
                   FROM book
                   WHERE pages = (SELECT max(pages)
                                  FROM book));

-- Пример простого запроса на удаление автора с id = 1, id может быть любым,
-- в том числе и полученный внутренним SELECT

DELETE FROM author
WHERE id = 1
    RETURNING *;

-- Пример простого запроса (с внутренним подзапросом) на выбор id автора из 
-- таблицы book с самой толстой книгой (MAX количество страниц)

SELECT author_id
FROM book
WHERE pages = (SELECT max(pages)
               FROM book);

-- Пример самого простого запроса позволяющего найти значение MAX количества 
-- страниц в таблице book

SELECT max(pages)
FROM book;