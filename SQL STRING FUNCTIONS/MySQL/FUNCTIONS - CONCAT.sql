# В столбце introduse (переименован при помощи 'as')вывели два столбца объедененных с текстом.

select name, concat(name,' студент с возрастом ', age, ' лет.') as introduse from my_base.students;

# Вывели текущую дату и время в таблице DUAL (таблица с одной ячейкой)

select concat('Сегодня - ', sysdate()) as day_and_time_now from dual;

select concat('Привет, ', 'друг!') as result_of_cocat  from dual;

select id, concat(name, ' - название курса!') as result_of_concat from my_base.courses;