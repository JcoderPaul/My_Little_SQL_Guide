### UNIQUE - уникальные ограничения Oracle PL/SQL

Уникальное ограничение - это одно поле или комбинация полей, которые 
однозначно определяют запись. Некоторые из полей могут содержать нулевые 
значения, если комбинация значений уникальна.

---
**!!! ВНИМАНИЕ !!!**

В Oracle уникальное ограничение не может содержать более 32 столбцов.
Уникальное ограничение может быть определено либо в операторе CREATE TABLE, 
либо в операторе ALTER TABLE.

---
**!!! Разницу между уникальным ограничением и первичным ключом !!!**

Первичный ключ - поля, которые являются частью первичного ключа, не могут 
содержать нулевое значение.

Уникальное ограничение - поля, которые являются частью уникального ограничения, 
могут содержать нулевые значения, если комбинация значений уникальна.

---
Oracle не позволяет создавать как первичный ключ, так и уникальное ограничение 
с одинаковыми столбцами.

---
### Создание уникального ограничения с использованием оператора CREATE TABLE.

Синтаксис:

    CREATE TABLE table_name
    (
    column1 datatype [ NULL | NOT NULL ],
    column2 datatype [ NULL | NOT NULL ],
    ...
    CONSTRAINT constraint_name UNIQUE (uc_col1, uc_col2, ... uc_col_n)
    );

Параметры:
- table_name - имя таблицы, которую вы хотите создать.
- column1, column2 - столбцы, которые вы хотите создать в таблице.
- constraint_name - имя уникального ограничения.
- uc_col1, uc_col2, ... uc_col_n - столбцы, которые составляют уникальное ограничение.

Пример:

    CREATE TABLE supplier
    ( supplier_id numeric(10) NOT NULL,
      supplier_name varchar2(50) NOT NULL,
      contact_name varchar2(50),
      CONSTRAINT supplier_unique UNIQUE (supplier_id)
    );

В этом примере мы создали уникальное ограничение supplier_unique для таблицы supplier. 
Оно состоит только из одного поля - поля supplier_id.

Мы также могли бы создать уникальное ограничение с несколькими полями.

Пример:

    CREATE TABLE supplier
    ( supplier_id numeric(10) NOT NULL,
      supplier_name varchar2(50) NOT NULL,
      contact_name varchar2(50),
      CONSTRAINT supplier_unique UNIQUE (supplier_id, supplier_name)
    );

---
### Создание уникального ограничения с использованием оператора ALTER TABLE

Синтаксис создания уникального ограничения с использованием оператора ALTER TABLE:

    ALTER TABLE table_name
    ADD CONSTRAINT constraint_name UNIQUE (column1, column2, ... column_n);

Параметры:
- table_name - имя таблицы для изменения. Это таблица, к которой мы хотим добавить 
               уникальное ограничение.
- constraint_name - имя уникального ограничения.
- column1, column2, ... column_n - столбцы, которые составляют уникальное ограничение.

Пример:

    ALTER TABLE supplier
    ADD CONSTRAINT supplier_unique UNIQUE (supplier_id);

В этом примере мы создали (добавили) уникальное ограничение для существующей таблицы 
supplier, называемое supplier_unique. Оно состоит из поля, с именем supplier_id.

Можно создать уникальное ограничение с несколькими полями:

    ALTER TABLE supplier
    ADD CONSTRAINT supplier_name_unique UNIQUE (supplier_id, supplier_name);

---
### Удаление уникального ограничения

Синтаксис для удаления уникального ограничения в Oracle:

    ALTER TABLE table_name
    DROP CONSTRAINT constraint_name;

Параметры:
- table_name - имя таблицы для изменения. Это таблица, из которой вы хотите удалить 
               уникальное ограничение.
- constraint_name - имя уникального ограничения для удаления.

Пример:

    ALTER TABLE supplier
    DROP CONSTRAINT supplier_unique;

В этом примере мы удалили уникальное ограничение supplier_unique для таблицы supplier.

---
### Отключение (запрет) уникального ограничения

Синтаксис отключения уникального ограничения в Oracle:

    ALTER TABLE table_name
    DISABLE CONSTRAINT constraint_name;

Параметры:
- table_name - имя таблицы для изменения. Это таблица, уникальное ограничение которой, 
               мы хотитм отключить (запретить).
- constraint_name - имя уникального ограничения для отключения.

Пример:

    ALTER TABLE supplier
    DISABLE CONSTRAINT supplier_unique;

В этом примере мы отключили уникальное ограничение supplier_unique для таблицы supplier.

---
### Включение (разрешение) уникального ограничения

Синтаксис для включения уникального ограничения в Oracle:

    ALTER TABLE table_name
    ENABLE CONSTRAINT constraint_name;

Параметры:
- table_name - имя таблицы для изменения. Это таблица, уникальное ограничение которой, 
               мы хотим включить.
- constraint_name - имя уникального ограничения для включения.

Пример:

    ALTER TABLE supplier
    ENABLE CONSTRAINT supplier_unique;

В этом примере мы включаем уникальное ограничение supplier_unique для таблицы supplier.
