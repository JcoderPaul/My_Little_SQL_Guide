# MySQL оператор UNION ALL используется для объединения наборов результатов 
# из 2-ух или более запросов SELECT. Он возвращает все строки из запроса и 
# не удаляет повторяющиеся строки между различными предложениями SELECT 
# т.е. возвращает все поля всех SELECT запросов с дубликатами.

# 'Полное объединение' двух таблиц, по столбцу с именем без сортироваки,
# объединяются однотипные данные. 

SELECT 'Student' as type, name FROM my_base.students
union all
SELECT 'Teacher' , name FROM my_base.teachers;

# Объединение по возрасту.

SELECT 'Student' as type, age FROM my_base.students
union all
SELECT 'Teacher' , age FROM my_base.teachers;

# Объединены логически не связные однотипные столбцы  

SELECT 'Student id' as type, student_id FROM my_base.students
union all
SELECT 'Teacher age' , age FROM my_base.teachers;

# Объединяем отфильтрованные по возрасту столбцы и сортируем по возрастанию.

SELECT 'Student' as type_of_person, age FROM my_base.students where age > 35
union all
SELECT 'Teacher' , age FROM my_base.teachers where age > 25
order by age;

# Объединяем отфильтрованные по возрасту однотипные столбцы и сортируем по имени.

SELECT 'Student' as type_of_person, name, age FROM my_base.students where age > 35
union all
SELECT 'Teacher' , name, age FROM my_base.teachers where age > 25
order by name;

# Объединяем отфильтрованные по (содержанию текста у одних и возраста у других) 
# однотипные столбцы и сортируем по имени.

SELECT 'Student' as type_of_person, name, age FROM my_base.students where name like '%ов%'
union all
SELECT 'Teacher' , name, age FROM my_base.teachers where age > 25
order by name;

SELECT 'Student' as type_of_person, name, age FROM my_base.students where name like '%ов%'
union all
SELECT 'Teacher' , name, age FROM my_base.teachers where name like '%ов%'
order by 3 desc; # Сортировка по убыванию в столбце 3 или 'age'

# Объединил таблицу саму с собой (возраст, id и имя) 

SELECT 'age' as num_union, age, name FROM my_base.students
union all
SELECT 'id' , student_id, name FROM my_base.students
order by 3 desc;