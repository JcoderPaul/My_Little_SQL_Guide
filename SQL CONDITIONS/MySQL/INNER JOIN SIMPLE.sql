# Объединить две таблицы и получить соответствие названия курса и имени преподавателя, 
# который его ведёт 

select my_base.courses.name, type, my_base.teachers.teacher_id, my_base.teachers.name
from my_base.courses as courses 
inner join my_base.teachers as teachers
on courses.teacher_id = teachers.teacher_id;

# Объединить две таблицы и получить соответствие имени студента, названия курса 
# и его возроста, а так же даты регистрации и оформления подписки на курс

select 
purchaselist.student_name,  
purchaselist.course_name, 
students.age,
students.registration_date as reg_date,
purchaselist.subscription_date as subs_date
from my_base.purchaselist
inner join my_base.students
on purchaselist.student_name = students.name;

# Объединить три таблицы и получить соответствие имени студента, 'course_id' и названия курса.
# Дополнительно отфильтровать данные по 'course_id' меньше 10

SELECT 
my_base.subscriptions.student_id, 
my_base.students.name, 
my_base.subscriptions.course_id,
my_base.courses.name
FROM (my_base.students, my_base.courses) 
JOIN my_base.subscriptions 
ON my_base.subscriptions.student_id = my_base.students.student_id 
AND my_base.courses.course_id = my_base.subscriptions.course_id 
where my_base.subscriptions.course_id < 10;