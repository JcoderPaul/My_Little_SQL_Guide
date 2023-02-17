# Вставили в таблицу 'manipulation_tab' строки из таблицы 'students' с именами и 
# возрастом студентов выше среднего.
INSERT INTO my_base.manipulation_tab (name, age)
(select name, age 
from my_base.students 
where 
age > (select avg(age) from my_base.students));

INSERT 
INTO my_base.old_students (name, age, course_name) 
(select res_tab.stud_name, res_tab.stud_age, res_tab.course_name from (select 
my_base.subscriptions.student_id, 
my_base.students.age as stud_age,
my_base.students.name as stud_name, 
my_base.subscriptions.course_id,
my_base.courses.name as course_name
FROM (my_base.students, my_base.courses) 
JOIN my_base.subscriptions 
ON my_base.subscriptions.student_id = my_base.students.student_id 
AND my_base.courses.course_id = my_base.subscriptions.course_id
where my_base.students.age > 40) as res_tab);