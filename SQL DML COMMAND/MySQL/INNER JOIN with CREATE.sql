select 
students.student_id,
courses.course_id
from my_base.purchaselist
inner join (my_base.students, my_base.courses)
on purchaselist.student_name = students.name 
and purchaselist.course_name = courses.name;

CREATE TABLE linkedlist_2 AS 
(select 
students.student_id as student_id,
courses.course_id as course_id
from my_base.purchaselist
inner join (my_base.students, my_base.courses)
on purchaselist.student_name = students.name 
and purchaselist.course_name = courses.name);
