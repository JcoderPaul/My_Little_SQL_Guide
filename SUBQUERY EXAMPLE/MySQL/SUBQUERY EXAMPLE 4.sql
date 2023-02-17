SELECT max(salary), min(salary), avg(salary) FROM my_base.teachers;

select teacher_id, name, salary 
FROM my_base.teachers 
where salary = (select max(my_base.teachers.salary) from my_base.teachers);

# Выводим сведения об учителях с максимальной зарплатой, чей ID находится в 
# множестве значений зарплат деленных на 1000 и округленных

select table_res.teacher_id, table_res.name, table_res.salary 
from 
(select teacher_id, name, salary 
FROM my_base.teachers 
where salary = (select max(my_base.teachers.salary) from my_base.teachers)) as table_res
where teacher_id in (SELECT round(salary/1000) FROM my_base.teachers);

# Выводим учителей чья зарплата выше средней по компании

select teacher_id, name, salary 
FROM my_base.teachers 
where salary > (select AVG(my_base.teachers.salary) from my_base.teachers);

