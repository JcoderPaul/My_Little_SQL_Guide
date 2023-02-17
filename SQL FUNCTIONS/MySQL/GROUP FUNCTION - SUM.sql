SELECT * FROM my_base.courses;

# Подсчет количество одинаковых значений 'duration'
select count(distinct duration) from my_base.courses;

# Находим сумму значений одинаковых 'duration'
select duration, sum(duration) as sum_of_same_duration from my_base.courses group by duration;

# Подсчет суммарного дохода
select sum(price) as all_income from my_base.courses;

# Подсчет суммарного дохода сгруппированного по 'type'
select type, sum(price) as income_of_type from my_base.courses group by type;

# Подсчет числа студентов сгруппированных по 'type'
select type, sum(students_count) as count_of_stud from my_base.courses group by type;

select teacher_id, sum(price) as sum_price from my_base.courses group by teacher_id;
