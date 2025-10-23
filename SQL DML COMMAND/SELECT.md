### SQL оператор SELECT

SQL оператор SELECT используется для извлечения записей из одной или 
нескольких таблиц или представлений в базе данных SQL. Полученные записи 
известны как набор результатов.

Синтаксис для оператора SELECT в SQL:

    SELECT expressions
    FROM tables
    [WHERE conditions]
    [ORDER BY expression [ ASC | DESC ]];

Параметры или аргумент:

- expressions - cтолбцы или расчеты, которые вы хотите получить. 
                Используйте *, если вы хотите выбрать все столбцы.
- tables - таблицы, из которых вы хотите получить записи. 
           В предложении FROM должна быть указана хотя бы одна таблица.
- WHERE conditions - необязательный. Условия, которые должны быть выполнены 
                     для записей, которые будут выбраны. Если не предусмотрено 
                     никаких условий, будут выбраны все записи.
- ORDER BY expression - необязательный. Выражение, используемое для сортировки 
                        записей в наборе результатов. Если указано более одного 
                        выражения, значения должны быть разделены запятыми.
- ASC - необязательный. ASC сортирует результирующий набор в порядке возрастания 
        по expressions. Это поведение по умолчанию, если модификатор не указан.
- DESC - необязательный. DESC сортирует результирующий набор в порядке убывания 
         по expressions.

Пример работы оператора SELECT в PgSQL:

    SELECT *
    FROM customers
    WHERE favorite_website = 'google.com'
    ORDER BY last_name ASC;

В этом примере мы использовали *, чтобы показать, что мы хотим просмотреть все 
поля из таблицы customers, где favorite_website - 'google.com'. Набор результатов 
сортируется по last_name в порядке возрастания.

Теперь давайте продемонстрируем, как использовать оператор SELECT в PgSQL для 
выбора отдельных столбцов таблицы:

    SELECT supplier_name, city
    FROM suppliers
    WHERE supplier_id > 500
    ORDER BY supplier_name ASC, city DESC;

В этом примере возвращаются только поля supplier_name и city из таблицы supplier, 
где значение supplier_id больше, чем 500. Результаты сортируются по supplier_name 
в порядке возрастания, а затем по полю city в порядке убывания.

---
### Выбор отдельных полей из нескольких таблиц

Вы также можете использовать SQL оператор SELECT для извлечения полей из нескольких таблиц.
В этом примере у нас есть таблица orders со следующими полями: order_id, customer_id, order_date
И таблица с именем customers со следующими данными: customer_id, first_name, last_name, favorite_website

Теперь давайте выберем столбцы из таблиц orders и customer. 
Используем запрос SELECT в PgSQL:

    SELECT orders.order_id, customers.last_name
    FROM orders
    INNER JOIN customers
    ON orders.customer_id = customers.customer_id
    WHERE orders.order_id <> 1
    ORDER BY orders.order_id;

Этот пример SELECT объединяет две таблицы, чтобы дать нам набор результатов, который 
отображает order_id из таблицы orders и last_name из таблицы customers. Каждый раз, 
когда мы используем столбец в операторе SELECT, мы добавляем к столбцу имя таблицы 
(например, orders.order_id) в случае, если есть какая-то двусмысленность относительно 
того, какой столбец к какой таблице принадлежит.

Если вы хотите выбрать все поля из таблицы orders, а затем поле last_name из таблицы 
клиентов, можно применить запрос SELECT в PgSQL:

    SELECT orders.*, customers.last_name
    FROM orders
    INNER JOIN customers
    ON orders.customer_id = customers.customer_id
    WHERE orders.order_id <> 1
    ORDER BY orders.order_id;

В этом примере мы используем orders.*, чтобы показать, что мы хотим выбрать все поля 
из таблицы orders, а затем мы выбираем поле last_name из таблицы customers.
