# CREATE TABLE AS используется для создания таблицы из существующей таблицы путем копирования 
# cтолбцов существующей таблицы. Важно отметить, что при создании таблицы таким образом новая 
# таблица будет заполнена записями из существующей таблицы (на основе SELECTа)

# Создаем таблицу из селекта и сразу ее заполняем выбранными данными

CREATE TABLE tables_from_tables AS 
(select my_base.courses.name as course_name, type, my_base.teachers.name as teacher_name
from my_base.courses as courses 
inner join my_base.teachers as teachers
on courses.teacher_id = teachers.teacher_id);