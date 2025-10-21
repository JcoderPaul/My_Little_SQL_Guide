### **[SQL Таблицы и представления(view)](https://github.com/JcoderPaul/My_Little_SQL_Guide/tree/master/SQL%20DDL%20COMMAND)**

- [CREATE TABLE](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DDL%20COMMAND/CREATE.md) - позволяет создавать и определять таблицу ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DDL%20COMMAND/MySQL/CREATE%20TABLE.sql)),([PostgreSQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DDL%20COMMAND/PostgreSQL/CREATE%20(TABLE%2C%20SCHEMA).sql));
- [CREATE TABLE AS](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DDL%20COMMAND/CREATE%20TABLE%20AS.md) - используется для создания таблицы из 
                  существующей таблицы путем копирования 
                  столбцов существующей таблицы ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DDL%20COMMAND/MySQL/SUBQ%20from%20TABLE.sql));
- [ALTER TABLE](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DDL%20COMMAND/ALTER%20TABLE.md) - используется для добавления, изменения или 
              удаления столбцов в таблице ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DDL%20COMMAND/MySQL/ALTER%20TABLE.sql)),([PostgreSQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/edit/master/SQL%20DDL%20COMMAND/PostgreSQL/ALTER.sql));
- [DROP TABLE](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DDL%20COMMAND/DROP%20TABLE.md) - позволяет стереть или удалить таблицу из базы данных;
- [VIEW](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DDL%20COMMAND/VIEW.md) - представляет собой виртуальную таблицу, созданную запросом, 
       соединяющим одну или несколько таблиц ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DDL%20COMMAND/MySQL/VIEW%20CREATE%202.sql)),([PostgreSQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DDL%20COMMAND/PostgreSQL/VIEW.sql));
  
---
### **[Ключи, индексы, ограничения в SQL](https://github.com/JcoderPaul/My_Little_SQL_Guide/tree/master/SQL%20CONSTRAINT)**

- [Primary Keys](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONSTRAINT/Primary%20Keys.txt) - Первичные ключи ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONSTRAINT/MySQL/CONSTRAINT%20-%20Primary%20Keys%20(duble%20constr).sql)),([PostgreSQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONSTRAINT/PostgreSQL/PRIMARY%20KEY%20in%20PostgreSQL.sql));
- [Foreign Keys](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONSTRAINT/Foreign%20Keys.txt) - Внешние ключи ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONSTRAINT/MySQL/CONSTRAINT%20-%20FOREIGN%20KEY.sql)),([PostgreSQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONSTRAINT/PostgreSQL/FOREIGN%20KEY%20in%20PostgreSQL.sql));
- Foreign Keys with cascade delete - Внешние ключи с каскадным удалением;
- Foreign Keys with set null on delete - Внешние ключи с «set null on delete»;
- Drop a foreign key - Удаление внешнего ключа;
- Disable a foreign key - Выключение внешнего ключа;
- Enable a foreign key - Включение внешнего ключа;
- Indexes - Индексы;
- [unique constraints](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONSTRAINT/UNIQUE.txt) - Уникальное ограничение ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONSTRAINT/MySQL/CONSTRAINT%20-%20UNIQUE.sql)),([PostgreSQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONSTRAINT/PostgreSQL/UNIQUE%20in%20PostgreSQL.sql));
- [check constraints](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONSTRAINT/CHECK.txt) - Проверка ограничения ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONSTRAINT/MySQL/CONSTRAINT%20-%20CHECK.sql)),([PostgreSQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONSTRAINT/PostgreSQL/CHECK%20in%20PostgreSQL.sql));

---
### **Типы SQL-запросов**

- [SELECT](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/SELECT.txt) - Извлечение записей из таблицы ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/MySQL/SELECT.sql)),([PostgreSQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/PostgreSQL/SELECT%20with%20ORDER%20BY%20and%20DESC.sql));
- [INSERT](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/INSERT.txt) - Вставка записей в таблицу ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/MySQL/INSERT.sql)),([PostgreSQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/PostgreSQL/INSERT%20(TABLE%2C%20SCHEMA).sql));
- [ORDER BY](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/ORDER%20BY.txt) - Сортировать результаты запроса ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/MySQL/ORDER%20BY_DESC.sql));
- [DISTINCT](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/DISTINCT.txt) - Получить уникальные записи ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/MySQL/DISTINCT.sql));
- [SELECT LIMIT](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/SELECT_LIMIT.txt) - Извлечение записей из таблицы и ограничение результатов ([PostgreSQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/PostgreSQL/SELECT%20with%20ALIAS.sql));
- [SELECT TOP](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/SELECT_TOP.txt) - Извлечение записей из таблицы и ограничение результатов;
- [WHERE](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/WHERE_AND_OR.txt) - Фильтр результатов;
- [FROM](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/FROM_OUTER_INNER_JOIN.txt) - Список таблицы и JOIN информация;
- [UNION](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/UNION.txt) - Объединяет 2 набора результатов (удаляет дубликаты) ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/MySQL/UNION.sql));
- [UNION ALL](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/UNION%20ALL.txt) - Объединяет 2 набора результатов (включает дубликаты) ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/MySQL/UNION%20ALL.sql));
- [DELETE](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/DELETE.txt) - Удалить записи из таблиц ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/MySQL/DELETE.sql)),([PostgreSQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/PostgreSQL/DELETE.sql));
- [UPDATE](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/UPDATE.txt) - Обновление записей в таблице ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/MySQL/UPDATE.sql)),([PostgreSQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/PostgreSQL/UPDATE.sql));
- [JOIN](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/JOIN.txt) - Соединение таблиц ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/MySQL/JOIN%20and%20GROUP%20BY.sql)),([PostgreSQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/PostgreSQL/JOINs.sql));
- [GROUP BY](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/GROUP%20BY.txt) - Группировать по одному или нескольким столбцам ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/MySQL/GROUP%20and%20HAVING.sql));
- [HAVING](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/HAVING.txt) - Ограничить группы возвращаемых строк ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/MySQL/GROUP%20and%20HAVING.sql)),([PostgreSQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/PostgreSQL/HAVING.sql));
- [EXCEPT](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20DML%20COMMAND/EXCEPT.txt) - Набор результатов одного минус набор результатов другого;
- TRUNCATE TABLE - Удалить все записи из таблицы (без отката);
- INTERSECT - Пересечение 2 наборов результатов;
- MINUS - Результирующий набор одного минус результирующий набор другого;

---
### **[SQL условия (Булева логика)](https://github.com/JcoderPaul/My_Little_SQL_Guide/tree/master/SQL%20CONDITIONS)** 

- [AND](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONDITIONS/AND.txt) - 2 или более условия, которые должны быть выполнены ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONDITIONS/MySQL/LIKE_AND_OR.sql));
- [OR](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONDITIONS/OR.txt) - Любое из условий выполнено ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONDITIONS/MySQL/LIKE_AND_OR.sql));
- AND И OR - Сочетание условий AND И OR (MySQL пример);
- [LIKE](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONDITIONS/LIKE.txt) - Используйте подстановочные знаки в предложении WHERE ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONDITIONS/MySQL/LIKE_AND_OR.sql));
- [IN](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONDITIONS/IN.txt) - Соответствие выражения списку значений ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONDITIONS/MySQL/BETWEEN%20ond%20IN.sql));
- NOT - Отрицание;
- [IS NULL](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONDITIONS/IS%20NULL.txt) - Проверка значения на NULL (MySQL пример);
- [IS NOT NULL](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONDITIONS/IS%20NOT%20NULL.txt) - Проверка значения на NOT NULL (MySQL пример);
- [BETWEEN](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONDITIONS/BETWEEN.txt) - Выборка в пределах диапазона (включительно) ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20CONDITIONS/MySQL/BETWEEN%20ond%20IN.sql));
- EXISTS - Условие выполняется, если подзапрос возвращает хотя бы одну строку;

---
### **[Агрегирующие функции SQL](https://github.com/JcoderPaul/My_Little_SQL_Guide/tree/master/SQL%20FUNCTIONS)**

- [COUNT](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20FUNCTIONS/COUNT.txt) - Возвращает количество выражений ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20FUNCTIONS/MySQL/GROUP%20FUNCTION%20-%20COUNT.sql));
- [SUM](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20FUNCTIONS/SUM.txt) - Возвращает сумму выражения ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20FUNCTIONS/MySQL/GROUP%20FUNCTION%20-%20SUM.sql));
- [MIN](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20FUNCTIONS/MIN.txt) - Возвращает минимум выражения ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20FUNCTIONS/MySQL/GROUP%20FUNCTION%20-%20MAX%20%D0%B8%20MIN.sql));
- [MAX](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20FUNCTIONS/MAX.txt) - Возвращает максимум выражения ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20FUNCTIONS/MySQL/GROUP%20FUNCTION%20-%20MAX%20%D0%B8%20MIN.sql));
- [AVG](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20FUNCTIONS/AVG.txt) - Возвращает среднее значение выражения ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20FUNCTIONS/MySQL/MAX_MIN_AVG.sql));

---
### **Прочие функции**

- [Символьные / строчные функции](https://github.com/JcoderPaul/My_Little_SQL_Guide/tree/master/SQL%20STRING%20FUNCTIONS):
	- [Oracle PL/SQL и MySQL](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/SQL_STRING_FUNCTIONS.md);
	- [PostrgeSQL](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/PostgreSQL_STRING_FUNCTIONS.txt);

- [Дополнительные функции SQL](https://github.com/JcoderPaul/My_Little_SQL_Guide/tree/master/ADDITIONAL%20FUNCTIONS):
	- [MySQL](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/ADDITIONAL%20FUNCTIONS/ADDITIONAL_FUNCTIONS_in_MYSQL%20.txt) ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/tree/master/ADDITIONAL%20FUNCTIONS/MySQL));

- [Функции Даты / Времени](https://github.com/JcoderPaul/My_Little_SQL_Guide/tree/master/DATA%20FUNCTIONS):
	- [MySQL](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/DATA%20FUNCTIONS/DATA_and_TIME_in_MYSQL.txt) ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/tree/master/DATA%20FUNCTIONS/MySQL));
	- [PostgreSQL](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/DATA%20FUNCTIONS/PostgreSQL_DATA_and_TIME.txt);

- [Числовые / математические функции SQL](https://github.com/JcoderPaul/My_Little_SQL_Guide/tree/master/NUMERIC%20FUNCTIONS):
	- [MySQL](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/NUMERIC%20FUNCTIONS/MySQL_NUMERIC_FUNCTIONS.txt) ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/tree/master/NUMERIC%20FUNCTIONS/MySQL));
	- [PostgreSQL](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/NUMERIC%20FUNCTIONS/PostgreSQL_NUMERIC_FUNCTIONS.txt);

---
### **[Примеры решения задач по PostgreSQL](https://github.com/JcoderPaul/My_Little_SQL_Guide/tree/master/SQL%20DML%20COMMAND/PostgreSQL_HW)**

Официальный сайт (см. документацию и дистрибутивы):
- MySQL: https://www.mysql.com/
- PostgreSQL: https://www.postgresql.org/
- Oracle PL/SQL: https://www.oracle.com/database/sqldeveloper/
- SQL SERVER: https://www.microsoft.com/ru-ru/sql-server/sql-server-downloads
- SQLite: https://www.sqlite.org/index.html
