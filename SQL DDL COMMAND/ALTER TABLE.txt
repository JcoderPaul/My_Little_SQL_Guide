### MySQL оператор ALTER TABLE используется для добавления, изменения или удаления столбцов в таблице. 

Оператор MySQL ALTER TABLE также используется для переименования таблицы.

---
### Синтаксис добавления столбца в таблицу MySQL (с использованием оператора ALTER TABLE):

    ALTER TABLE table_name
    ADD new_column_name column_definition
    [ FIRST | AFTER column_name ];

- table_name - имя таблицы для изменения.
- new_column_name - имя нового столбца для добавления в таблицу.
- column_definition - тип данных и определение столбца (NULL или NOT NULL и т. д.).
- FIRST | AFTER column_name - необязательный. Он сообщает MySQL, где в таблице создается столбец. 
  Если этот параметр не указан, то новый столбец будет добавлен в конец таблицы.

Пример в MySQL:

    ALTER TABLE contacts
    ADD last_name varchar(40) NOT NULL
    AFTER contact_id;

Этот MySQL пример ALTER TABLE добавит столбец с именем last_name в таблицу contacts. Он будет создан 
как столбец NOT NULL и появится в таблице после поля contact_id.

---
### Синтаксис добавления нескольких столбцов в таблицу MySQL (с использованием оператора ALTER TABLE):

    ALTER TABLE table_name
    ADD new_column_name column_definition
      [ FIRST | AFTER column_name ],
    ADD new_column_name column_definition
      [ FIRST | AFTER column_name ],
    
    ...;

- table_name - имя таблицы для изменения.
- new_column_name - имя нового столбца для добавления в таблицу.
- column_definition - тип данных и определение столбца (NULL или NOT NULL и т. д.).
- FIRST | AFTER column_name - необязательный. Он сообщает MySQL, где в таблице создается столбец. 
  Если этот параметр не указан, новый столбец будет добавлен в конец таблицы.

Пример на MySQL:

    ALTER TABLE contacts
    ADD last_name varchar(40) NOT NULL
    AFTER contact_id,
    ADD first_name varchar(35) NULL
    AFTER last_name;

Этот пример ALTER TABLE добавит в таблицу contacts два столбца - last_name и first_name.
Поле last_name будет создано как столбец varchar (40) NOT NULL и появится в таблице contacts после столбца contact_id. 
Столбец first_name будет создан как столбец NULL varchar (35) и появится в таблице после столбца last_name.

---
### Изменить столбец в таблице

Синтаксис для изменения столбца в таблице MySQL (с использованием оператора ALTER TABLE):

    ALTER TABLE table_name
    MODIFY column_name column_definition
    [ FIRST | AFTER column_name ];

- table_name - имя таблицы для изменения.
- column_name - имя столбца для изменения в таблице.
- column_definition - измененный тип данных и определение столбца (NULL или NOT NULL и т. д.).
- FIRST | AFTER column_name - необязательный. 
  Он сообщает MySQL, где в таблице помещается столбец, если вы хотите изменить его позицию.

Пример на MySQL:

    ALTER TABLE contacts
    MODIFY last_name varchar(50) NULL;

Этот пример ALTER TABLE изменит столбец с именем last_name как тип данных varchar (50) и установит для столбца значения NULL.

---
### Изменить несколько столбцов в таблице.

Синтаксис для изменения нескольких столбцов в таблице MySQL (с использованием оператора ALTER TABLE):

    ALTER TABLE table_name
    MODIFY column_name column_definition
      [ FIRST | AFTER column_name ],
    MODIFY column_name column_definition
      [ FIRST | AFTER column_name ],
    ...;

- table_name - имя таблицы для изменения.
- column_name - имя столбца для изменения в таблице.
- column_definition - измененный тип данных и определение столбца (NULL или NOT NULL и т. д.).
- FIRST | AFTER column_name - необязательный. Он сообщает MySQL, где в таблице помещается столбец, если вы хотите изменить его позицию.

Пример на MySQL:

    ALTER TABLE contacts
    MODIFY last_name varchar(55) NULL
    AFTER contact_type,
    MODIFY first_name varchar(30) NOT NULL;

Этот пример ALTER TABLE будет изменять в таблице contacts два столбца - last_name и first_name.
Поле last_name будет изменено на столбец NULL varchar (55) и появится в таблице после столбца contact_type. 
Столбец first_name будет изменен на столбец varchar (30) NOT NULL (и не изменит позицию в определении таблицы 
contacts, так как не указано FIRST | AFTER).

---
### Удаление столбца из таблицы

Синтаксис для удаления столбца из таблицы в MySQL (с использованием оператора ALTER TABLE):

    ALTER TABLE table_name
    DROP COLUMN column_name;

- table_name - имя таблицы для изменения.
- column_name - имя столбца для удаления из таблицы.

Пример на MySQL:

    ALTER TABLE contacts
    DROP COLUMN contact_type;

Этот пример ALTER TABLE удаляет столбец с именем contact_type из таблицы contacts.

---
### Переименование столбца в таблице

Синтаксис для переименования столбца в таблице MySQL (с использованием оператора ALTER TABLE):

    ALTER TABLE table_name
    CHANGE COLUMN old_name new_name
    column_definition
      [ FIRST | AFTER column_name ];

- table_name - имя таблицы для изменения.
- old_name - столбец для переименования.
- new_name - новое имя столбца.
- column_definition - тип данных и определение столбца (NULL или NOT NULL и т. д.). 
  Мы должны указать определение столбца при переименовании столбца, даже если оно не изменится.
- FIRST | AFTER column_name - необязательный. Он сообщает MySQL, где в таблице помещается столбец, 
  если мы хотим изменить его позицию.

Пример на MySQL:

    ALTER TABLE contacts
    CHANGE COLUMN contact_type ctype
    varchar(20) NOT NULL;

Этот MySQL пример ALTER TABLE переименует столбец с именем contact_type в ctype. 
Столбец будет определен как столбец varchar (20) NOT NULL.

---
### Переименовать таблицу

Синтаксис для переименования таблицы в MySQL:

    ALTER TABLE table_name
    RENAME TO new_table_name;

- table_name - таблица для переименования.
- new_table_name - новое имя таблицы для использования.

Пример на MySQL:

    ALTER TABLE contacts
    RENAME TO people;

Этот пример ALTER TABLE переименует таблицу contacts в people.
