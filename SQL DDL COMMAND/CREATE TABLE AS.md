### MySQL оператор CREATE TABLE AS используется для создания таблицы из существующей таблицы путем копирования столбцов существующей таблицы.

Важно отметить, что при создании таблицы таким образом новая таблица будет заполнена 
записями из существующей таблицы (на основе предложения SELECT).

Синтаксис оператора CREATE TABLE AS в MySQL:

    CREATE TABLE [ IF NOT EXISTS ] new_table [ AS ]
    SELECT expressions
    FROM existing_tables
      [WHERE conditions];

Параметры или аргументы:
- IF NOT EXISTS - необязательный. Если указано, оператор CREATE TABLE AS не будет вызывать ошибку, если таблица уже существует.
- new_table - имя таблицы, которую мы хотим создать.
- AS - необязательный. Если вы укажете ключевое слово AS или нет, это не повлияет на создание таблицы.
- expressions - столбцы из existing_tables, которые мы хотим создать в new_table. Определения столбцов 
  из перечисленных столбцов будут перенесены в созданную вами new_table.
- existing_tables - существующие таблицы для копирования определений столбцов и связанных записей (в соответствии с оператором WHERE).
- WHERE conditions - необязательный. Условия, которые должны быть выполнены для записей, которые должны быть скопированы в new_table.

---
**!!! Примечание !!!**

Определения столбцов из existing_tables будут скопированы в new_table.
В new_table будут занесены записи, основанные на условиях в операторе WHERE.

---
### MySQL пример CREATE TABLE AS, который показывает, как создать таблицу, скопировав все столбцы из другой таблицы:

    CREATE TABLE local_companies AS 
    SELECT *
    FROM companies
    WHERE state = 'Nevada';

В этом примере будет создана новая таблица с именем local_companies, которая включает все столбцы из таблицы companies.
Если в таблице companies есть записи, то новая таблица local_companies будет заполнена записями, возвращаемыми оператором SELECT.

---
### Пример CREATE TABLE AS, который показывает, как создать таблицу, скопировав выбранные столбцы из нескольких таблиц:

    CREATE TABLE suppliers AS
    SELECT companies.company_id AS "supplier_id", 
           companies.address, companies.state, categories.category_type
    FROM companies, categories
    WHERE companies.company_id = categories.category_id
    AND companies.state = 'Nevada';
  
В этом примере будет создана новая таблица, называемая suppliers, на основе определений столбцов из таблиц 
companies и categories. Обратите внимание, что в этом примере мы поле company_id назвали как supplier_id, 
так как мы хотим, чтобы поле новой таблицы suppliers называлось supplier_id, а не company_id.
