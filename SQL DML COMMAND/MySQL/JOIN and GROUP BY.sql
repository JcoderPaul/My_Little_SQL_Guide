# В обеих выборках приведенных ниже участвуют две таблицы.

# - Находим вличину средних зарплат по направлениям обучения

select res_tab.curse_type, AVG(res_tab.salary) as AVG_SALARY from
(select 
my_base.courses.type as curse_type, 
my_base.courses.teacher_id as teacher_id, 
my_base.teachers.name as teachers_name,
my_base.teachers.salary as salary
from my_base.courses
join my_base.teachers
on my_base.courses.teacher_id = my_base.teachers.teacher_id) as res_tab
group by curse_type;

# - Находим преподавателей у которых зарплата выше средней по направлениям обучения.

select res_tab.curse_type, res_tab.teachers_name, res_tab.salary from
(select 
my_base.courses.type as curse_type, 
my_base.courses.teacher_id as teacher_id, 
my_base.teachers.name as teachers_name,
my_base.teachers.salary as salary
from my_base.courses
join my_base.teachers
on my_base.courses.teacher_id = my_base.teachers.teacher_id) as res_tab
where salary >= (select AVG(res_tab_2.salary) from 
(select 
my_base.courses.type as curse_type, 
my_base.courses.teacher_id as teacher_id, 
my_base.teachers.salary as salary
from my_base.courses
join my_base.teachers
on my_base.courses.teacher_id = my_base.teachers.teacher_id) as res_tab_2
where res_tab_2.curse_type = res_tab.curse_type);