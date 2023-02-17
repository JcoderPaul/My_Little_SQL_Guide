# Делаем выборку самых высокооплачиваемых преподов и выводим их ID, зарплату и направление обучения.
# Нужно помнить, что в таблице 'учителя' есть люди ID которых отсутствует в таблице 'курсы'
# Значит чистая выборка по максимальным зарплатам из таблицы учителя будет другой  

select 
salary_res.teacher_id, 
salary_res.teachers_name, 
salary_res.salary, 
salary_res.curse_type 
from
(select 
my_base.courses.type as curse_type, 
my_base.courses.teacher_id as teacher_id, 
my_base.teachers.name as teachers_name,
my_base.teachers.salary as salary
from my_base.courses
join my_base.teachers
on my_base.courses.teacher_id = my_base.teachers.teacher_id) as salary_res
where salary = (select max(my_base.teachers.salary) from my_base.teachers);