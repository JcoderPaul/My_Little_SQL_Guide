ALTER TABLE my_base.vip_student
MODIFY course_num INT NOT NULL;

ALTER TABLE my_base.vip_student
ADD CONSTRAINT chk_course CHECK (course_num >= 1 and course_num <=6); 

ALTER TABLE my_base.vip_student
DROP CHECK chk_course;

ALTER TABLE my_base.vip_student
# INSTR возвращает позицию подстроки в строке, т.е. в веденной строке на любом месте должен быть '@'. 
# Заданный чек проверяет наличие этого вхождения т.е. адрес электронной почты должен содержать собачку 
# или он не будет внесен в базу.  
ADD CONSTRAINT chk_email CHECK (instr(email, '@') > 0);