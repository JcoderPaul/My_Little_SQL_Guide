### VIEW (ПРЕДСТАВЛЕНИЕ)

В MySQL VIEW (представление или вью) не является физической таблицей, а представляет 
собой виртуальную таблицу, созданную запросом, соединяющим одну или несколько таблиц.

---
###Создать VIEW:

Синтаксис для оператора CREATE VIEW в MySQL:

    CREATE [OR REPLACE] VIEW view_name AS
    SELECT columns
    FROM tables
      [WHERE conditions];

Параметры или аргументы:
- OR REPLACE - необязательный. Если мы не укажем этот атрибут и 
  VIEW уже существует, оператор CREATE VIEW вернет ошибку.
- view_name - имя VIEW, которое мы хотим создать в MySQL.
- WHERE conditions - необязательный. Условия, которые должны 
  быть выполнены для записей, которые должны быть включены в VIEW.

Ниже приведен пример использования оператора CREATE VIEW для создания представления в MySQL:

    MySQL
    CREATE VIEW hardware_suppliers AS
    SELECT supplier_id, supplier_name
    FROM suppliers
    WHERE category_type = 'Hardware';

Этот пример CREATE VIEW создаст виртуальную таблицу hardware_suppliers на основе набора 
результатов оператора SELECT. Теперь мы можем запросить данные MySQL VIEW следующим образом:

    SELECT *
    FROM hardware_suppliers;

---
### Обновить VIEW или оператор ALTER VIEW.

Мы можем изменить определение VIEW в MySQL, не удаляя его с помощью оператора ALTER VIEW.
Синтаксис оператора ALTER VIEW в MySQL:

    ALTER VIEW view_name AS
    SELECT columns
    FROM table
    WHERE conditions;

Пример того, как можно использовать оператор ALTER VIEW в MySQL:

    ALTER VIEW hardware_suppliers AS
    SELECT supplier_id, supplier_name, address, city
    FROM suppliers
    WHERE category_type = 'Hardware';

Этот пример ALTER VIEW в MySQL обновит определение VIEW с именем hardware_suppliers, не удаляя его. 
В этом примере мы добавляем столбцы address и city в VIEW.

---
### Удалить VIEW

Когда в MySQL создается VIEW, мы можем удалить его с помощью оператора DROP VIEW.
Синтаксис оператора DROP VIEW в MySQL:

    DROP VIEW [IF EXISTS] view_name;

Параметры или аргументы:
- view_name - имя представления, которое вы хотите удалить.
- IF EXISTS - необязательный. Если вы не укажете этот атрибут и 
  VIEW не существует, оператор DROP VIEW выдаст ошибку.

Ниже приведен пример использования оператора DROP VIEW в MySQL:

    DROP VIEW hardware_suppliers;

Этот пример DROP VIEW удалит MySQL VIEW с именем hardware_suppliers.
