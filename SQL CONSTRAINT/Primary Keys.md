### Primary Keys

В Oracle/PLSQL Primary Key представляет собой одно поле или комбинацию полей, 
которые определяет уникальность записи. В полях, которые являются частью Primary Key, 
не может содержаться значение NULL. Таблица может иметь только один первичный ключ.

---
**!!! ВНИМАНИЕ !!!**
В Oracle/PLSQL Primary Key не может содержать более 32 столбцов.
Primary Key может быть определен либо в операторе CREATE TABLE или в операторе ALTER TABLE.

---
### Создание Primary Key при помощи CREATE TABLE

Можно создать Primary Key в Oracle/PLSQL с помощью оператора CREATE TABLE.

Синтаксис:

    CREATE TABLE table_name
    (
      column1 datatype null/not null,
      column2 datatype null/not null,
      ...
      CONSTRAINT constraint_name PRIMARY KEY (column1, column2, ... column_n)
    );

Пример:

    CREATE TABLE supplier
    (
      supplier_id numeric(10) not null,
      supplier_name varchar2(50) not null,
      contact_name varchar2(50),
      CONSTRAINT supplier_pk PRIMARY KEY (supplier_id)
    );

В этом примере мы создали Primary Key таблицы supplier c названием supplier_pk. 
Он состоит только из одного поля - supplier_id.

Мы могли бы также создать Primary Key с больше чем одним полем, как в примере ниже:

    CREATE TABLE supplier
    (
      supplier_id numeric(10) not null,
      supplier_name varchar2(50) not null,
      contact_name varchar2(50),
      CONSTRAINT supplier_pk PRIMARY KEY (supplier_id, supplier_name)
    );

---
### Создание Primary Key с использованием ALTER TABLE

Можно создать Primary Key в Oracle/PLSQL c помощью ALTER TABLE.

Синтаксис:

    ALTER TABLE table_name
    ADD CONSTRAINT constraint_name PRIMARY KEY (column1, column2, ... column_n);

Пример:

    ALTER TABLE supplier
    ADD CONSTRAINT supplier_pk PRIMARY KEY (supplier_id);

В этом примере мы создали Primary Key существующей таблицы supplier под названием supplier_pk. 
Он состоит из поля под названием supplier_id.

Можно также создать Primary Key с более чем одним полем, как в примере ниже:

    ALTER TABLE supplier
    ADD CONSTRAINT supplier_pk PRIMARY KEY (supplier_id, supplier_name);

---
### Удаление Primary Key

Можно удалить Primary Key в Oracle/PLSQL с помощью запроса ALTER TABLE с DROP.

Синтаксис:

    ALTER TABLE table_name
    DROP CONSTRAINT constraint_name;

Пример:

    ALTER TABLE supplier
    DROP CONSTRAINT supplier_pk;

В этом примере мы удаляем Primary Key с названием supplier_pk из таблицы supplier .

---
### Отключение Primary Key

Можно отключить Primary Key в Oracle/PLSQL с помощью оператора ALTER TABLE с DISABLE.

Синтаксис:

    ALTER TABLE table_name
    DISABLE CONSTRAINT constraint_name;

Пример:

    ALTER TABLE supplier
    DISABLE CONSTRAINT supplier_pk;

В этом примере мы отключаем Primary Key таблицы supplier под названием supplier_pk.

---
### Включить Primary Key

Можно включить Primary Key в Oracle/PLSQL с помощью оператора ALTER TABLE с ENABLE.

Синтаксис:

    ALTER TABLE table_name
    ENABLE CONSTRAINT constraint_name;

Пример:

    ALTER TABLE supplier
    ENABLE CONSTRAINT supplier_pk;

В этом примере мы включаем Primary Key таблицы supplier с названием supplier_pk.
