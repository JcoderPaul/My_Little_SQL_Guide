# Задали псевданимы для столбцов образа VIEW v_stud_age_more

CREATE VIEW v_stud_age_more (id, stud_name, age_stud) AS
select student_id, name, age from my_base.students; 

SELECT * FROM v_stud_age_more;

# Создали другой образ v_stud_age_more_35 из образа v_stud_age_more

CREATE VIEW v_stud_age_more_35 (id, stud_name, age_stud) AS
select id, stud_name, age_stud from v_stud_age_more where age_stud >= 35; 

SELECT * FROM v_stud_age_more_35;
