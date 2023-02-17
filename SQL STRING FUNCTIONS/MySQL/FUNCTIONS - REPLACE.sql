SELECT * FROM my_base.students;

select name, replace(name, 'а', 'А') as name_cor from my_base.students;

select name, replace(name, 'ов', 'OFF') as name_cor from my_base.students;

# В данном примере replase используется для удаления 'ов' и например 'Фуриков', стал 'Фурик'
select name, replace(name, 'ов', '') as name_cor from my_base.students;