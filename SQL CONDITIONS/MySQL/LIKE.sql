# Пример применения префексов и суфиксов т.е. % в начале и конце слова.

SELECT * FROM my_base.courses;

select id, name from my_base.courses where name like 'М%'; # Выводим все строки из таблицы где значение поля 'name' начинатся с 'М' 

select id, name from my_base.courses where name like '%O'; # Выводим все строки из таблицы где значение поля 'name' оканчивается на 'О'
