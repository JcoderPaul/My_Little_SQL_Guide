CREATE VIEW stud_age_more_35 AS
select student_id, name, age from my_base.students where age > 35; 

SELECT * FROM stud_age_more_35;

# Хотя данные 'вроде' добавляются во VIEW они по факту добавляются в таблицу 'my_base.students'
# и если вдруг, например, один из неотображаемых столбцов (дата) будет 'not null' мы не сможем
# добавить данные. Возможности по вставке, корректировке, удалению данных из VIEW зависят,
# от логики и ограничений наложенных на основную таблицу из которой был сделан образ.   

insert INTO stud_age_more_35 (name, age) VALUES ('Гука Губарев', 43);

# Мы добавиди элемент с age < 35, в образе VIEW его нет, в таблице родителе my_base.students есть.

insert INTO stud_age_more_35 (name, age) VALUES ('Сеня Полубес', 13);

# Внесем изменения в основную таблицу сделаем дату регистрации студента NOT NULL

ALTER TABLE my_base.students 
CHANGE COLUMN registration_date registration_date DATETIME NOT NULL COMMENT ' ';

# При попытке добавить в образ stud_age_more_35, вроде бы подходящий по параметрам элемент  
# добавления не происходит, затык по DATE, а внести ее мы не можем, т.к. в образе нет колонки registration_date

insert INTO stud_age_more_35 (name, age) VALUES ('Камбер Кульдский', 43);