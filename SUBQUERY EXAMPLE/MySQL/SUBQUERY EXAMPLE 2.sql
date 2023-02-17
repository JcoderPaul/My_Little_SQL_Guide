# ********************************************************************************
# Объединение двух таблиц и вывод данных

select 
my_base.courses.type, 
my_base.courses.teacher_id, 
my_base.teachers.name,
my_base.teachers.salary
from my_base.courses
join my_base.teachers
on my_base.courses.teacher_id = my_base.teachers.teacher_id;

# ********************************************************************************
# Пошаговая логика этого запроса приведена внутри самого запроса
select # 2. Делаем выборку из вновь сформированной таблицы 'res_table'
res_table.type, 
min(res_table.salary),
max(res_table.salary)
from 
(select # 1. Сначала делаем выборку и объединение двух таблиц, чтобы получить соответствия 
my_base.courses.type as type, # направления обучения и связать его
my_base.courses.teacher_id as teacher_id, # через teacher_id одной таблицы с ней же другой таблицы
my_base.teachers.salary as salary # и зарплатой учителя.
from my_base.courses # Таблица курсов объединяется 
join my_base.teachers # с таблицей содержащей сведения об учителях.
on (my_base.courses.teacher_id = my_base.teachers.teacher_id)) as res_table # Новая таблица получает псевдоним (alias)
group by type; # 3. Группируем результаты по типу (направлению) обучающих курсов