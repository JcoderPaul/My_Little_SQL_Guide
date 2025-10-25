### SQL оператор ORDER BY

SQL оператор ORDER BY используется для сортировки записей в наборе результатов запроса SELECT.

Синтаксис для оператора ORDER BY в SQL:

           SELECT expressions
           FROM tables
             [WHERE conditions]
           ORDER BY expression [ ASC | DESC ];

Параметры или аргумент:

- expressions - cтолбцы или расчеты, которые вы хотите получить.
- tables - таблицы, из которых вы хотите получить записи. 
           В предложении FROM должна быть указана хотя бы одна таблица.
- WHERE conditions - необязательный. Условия, которые должны быть выполнены 
                     для записей, которые будут выбраны.
- ASC - необязательный. ASC сортирует результирующий набор в порядке возрастания по expressions. 
        Это поведение по умолчанию, если модификатор не указан.
- DESC - необязательный. DESC сортирует результирующий набор в порядке убывания по expressions.

---
**!!! Примечание !!!**

Если модификатор ASC или DESC не указан в предложении ORDER BY, результаты будут отсортированы 
по expressions в порядке возрастания. Это эквивалентно ORDER BY expressions ASC.

---
### Сортировка результатов по возрастанию

Чтобы отсортировать результаты в порядке возрастания, вы можете указать атрибут ASC. Если после 
поля в предложении ORDER BY не указано значение (ASC или DESC), порядок сортировки по умолчанию 
будет соответствовать возрастающему. 

В этом примере у нас есть таблица customers со следующими полями: customer_id, first_name, 
                                                                  last_name, favorite_website.
Пример SQL оператора в PgSQL:

           SELECT *
           FROM customers
           ORDER BY last_name;

В этом примере будут возвращены все записи из таблицы customers, отсортированные по полю last_name 
в порядке возрастания, и будет эквивалентен следующему SQL предложению ORDER BY.

           SELECT *
           FROM customers
           ORDER BY last_name ASC;

Большинство программистов пропускают атрибут ASC при сортировке в порядке возрастания.

---
### Cортировка результатов по убыванию

При сортировке набора результатов в порядке убывания вы используете атрибут DESC в предложении 
ORDER BY. 

В примере у нас есть таблица suppliers со следующими данными: supplier_id, supplier_name, 
                                                                        city, state.
SQL оператор в PgSQL:

           SELECT *
           FROM suppliers
           WHERE supplier_id > 40
           ORDER BY supplier_id DESC;

В этом примере будет отсортирован набор результатов по полю supplier_id в порядке убывания.

---
### Cортировка результатов по относительной позиции

Вы также можете использовать SQL оператор ORDER BY для сортировки по относительной позиции в наборе 
результатов, где первое поле в наборе результатов равно 1, второе поле равно 2, третье поле равно 3 
и т.д.

Допустим у нас есть таблица products со следующими полями: product_id, product_name, category_id
Теперь используем следующий SQL запрос в PgSQL:

           SELECT product_id, 
                  product_name
           FROM products
           WHERE product_name <> 'Bread'
           ORDER BY 1 DESC;

В этом примере результаты сортируются по полю product_id в порядке убывания, поскольку поле 
product_id находится в позиции № 1 в наборе результатов и будет эквивалентно следующему SQL 
оператору ORDER BY в PgSQL:

           SELECT product_id, 
                  product_name
           FROM products
           WHERE product_name <> 'Bread'
           ORDER BY product_id DESC;

---
### Использование атрибутов ASC и DESC

При сортировке набора результатов с помощью SQL предложения ORDER BY вы можете использовать атрибуты 
ASC и DESC в одном операторе SELECT.

У нас есть таблица products с полями: product_id, product_name, category_id

Делаем запрос SQL в PgSQL:

           SELECT *
           FROM products
           WHERE product_id <> 
           ORDER BY category_id DESC, 
                    product_name ASC;

В этом примере возвращаются записи, отсортированные по полю category_id в порядке убывания, а 
вторичная сортировка - по полю product_name в порядке возрастания.
