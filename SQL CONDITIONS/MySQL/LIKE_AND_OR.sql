# Пример применения символа % или его комбинации.

# Выводим все строки из таблицы где значение поля 'name' оканчивается на 'О' и значения 'teacher_id' больше 5

select id, name, teacher_id from my_base.courses where name like '%O' and teacher_id > 10; 

select id, name, teacher_id from my_base.courses where teacher_id < 5 or teacher_id > 40 order by teacher_id; 

select id, name, type from my_base.courses where not (type = 'PROGRAMMING'); # Выводим строки где значение поля type НЕ 'PROGRAMMING'

# Если сравнить с первой строкой, где мы выбирали все 'name' оканчивающиеся на 'O', то в данном случае добавив not, 
# мы получили список строк, в которых текст не оканчивается на 'O', т.е. любое положительное условие можно измениить 
# на противоположное.

select id, name from my_base.courses where not (name like '%O'); 

select * from my_base.courses where duration > 10 and teacher_id > 10;

# Обратный вариант к предыдущей команде

select * from my_base.courses where not (duration > 10 and teacher_id > 10);

# Выводим все строки где в поле 'name' где-то в строке есть текст 'разр' 
# и количество символов до и после этого выражения не имеет значения

select * from my_base.courses where name like '%разр%'; 