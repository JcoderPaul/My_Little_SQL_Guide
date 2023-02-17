# Все буквы в столбце 'name' делаются маленькими (далее сортируем по алфавиту)
select name, lower(name) from my_base.students order by name;

# Все буквы в столбце 'name' делаются большими
select name, upper(name) from my_base.students order by name;

select name from my_base.students where name = lower('ГИЛЁВ САМСОН');

# Производим выборку из базы с использованием 'lower' и 'like'
select name from my_base.students where lower(name) like '%самсон';

# Производим выборку из базы с использованием 'uppper' и 'like'
select name from my_base.students where upper(name) like '%САМСОН';