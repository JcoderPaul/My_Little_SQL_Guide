# ***************************************************************************
select 
name, count(teacher_id) 
from my_base.courses 
group by teacher_id
having count(teacher_id) > 2
order by 2;

# ***************************************************************************
select 
type, count(type), sum(students_count)
from my_base.courses 
group by type
having sum(students_count) > 4000
order by name;