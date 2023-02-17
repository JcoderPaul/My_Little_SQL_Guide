# Unique Constraints - это одно поле или комбинация полей, которые определяют уникальную запись. 
# Некоторые из полей могут содержать нулевые значения, если комбинация значений уникальна.
# CREATE TABLE table_name
# ( column1 datatype [ NULL | NOT NULL ],
#   column2 datatype [ NULL | NOT NULL ],
#   ...
#   CONSTRAINT constraint_name UNIQUE (uc_col1, uc_col2, ... uc_col_n)
# );
# или задать ограничение на один столбец при создании таблицы 
# CREATE TABLE table_name
# (
#    ...,
#    column_name datatype UNIQUE,
#    ...
# ); 


SELECT * FROM my_base.vip_student;


# Синтаксис для создания уникального ограничения с использованием оператора ALTER TABLE в MySQL:
# ALTER TABLE table_name ADD CONSTRAINT constraint_name UNIQUE (column1, column2, ... column_n);

# **************************************************************************************

# Создаем уникальное ограничение для нескольких полей
ALTER TABLE my_base.vip_student # Вносим изменения в таблицу

# добавляя ограничения с именем uc_name_phone в столбцы 'name' , 'phone'
ADD CONSTRAINT uc_name_phone UNIQUE (name , phone);


# **************************************************************************************

# Ограничение 'uc_name_phone' созданное в предыдущем примере связало два поля 
# имя и телефон, что не позволяет создать еще одну строку с неуникальным сочетанием
# 'name' и 'phone'. 
INSERT INTO my_base.vip_student (name, course_num, phone) 
VALUES ('Буба Касторский', '34', '555-234-456');
INSERT INTO my_base.vip_student (name, course_num, phone) 
VALUES ('Глеб Жиглов', '34', '555-234-456');
INSERT INTO my_base.vip_student (name, course_num, phone) 
VALUES ('Буба Касторский', '34', '555-887-234');


# **************************************************************************************

# Создаем уникальное ограничение для поля в таблице 'my_base.vip_faculties'
ALTER TABLE my_base.vip_faculties
ADD CONSTRAINT faculties_unique UNIQUE (name); 

# Удаляем уникальное ограничение для поля в таблице 'my_base.vip_faculties'
ALTER TABLE my_base.vip_faculties
DROP INDEX faculties_unique;



