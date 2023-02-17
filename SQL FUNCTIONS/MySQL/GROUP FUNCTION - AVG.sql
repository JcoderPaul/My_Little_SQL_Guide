# Средняя цена курса

select avg(price) from my_base.courses;

# Селект внутри селекта, сначала идет подзапрос по нахождению средней цены
# затем идет основная выборка (или внешний селект)

select 
name, price 
from my_base.courses 
where 
price > (select avg(price) from my_base.courses);

# Находим и выводим самое длинное имя курса и самую маленькую цену за курс (они не связаны)
# но выборка делается из одной таблицы

select 
(select max(length(name)) from my_base.courses) as longest_name,
(select min(price) from my_base.courses) as min_price
from dual;

# Находим и выводим самое длинное имя студента и самое короткое имя учителя
# выборка делается из разных таблиц

select 
(select max(length(name)) from my_base.students) as longest_name_of_students,
(select min(length(name)) from my_base.teachers) as shortest_name_of_teacher
from dual;

