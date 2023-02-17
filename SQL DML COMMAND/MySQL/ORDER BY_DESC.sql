# ORDER BY - cортируем таблицу по столбцу 'students_count' от меньшего к большему, в данном случае 
# ASC или сортировка по возрастанию применена по умолчанию

select * from my_base.courses order by students_count;

# Сортируем таблицу по столбцу 'name'

select id, name from my_base.courses order by name; 

# Выбираем id, name из таблицы courses и сортируем таблицу по столбцу 'name', 
# но в обратном порядке, т.е. от большего к меньшему применив 'DESC' 
# и фильтруем по длинне строки имени - более 20 символов.

select id, name from my_base.courses where length(name) > 20 order by name desc;

# В данном случае идет сортировка по ID в ASC по умолчанию

select id, name from my_base.courses where length(name) > 20 order by id;

# Комбинационная сортировка по нескольким столбцамa:
# - прямо или от меньшего к большему по столбцу 'type', 
# - от большего к меньшему по столбцу 'teacher_id'
# - снова прямо по столбцу 'students_count'.
#
# C начала идет сортировка по столбцу 'type', если там сортировать нечего (содержимое полей одинаковое), 
# то сортируется столбец 'teacher_id' (если в нем есть одинаковые значения, то) наконец происходит сортировкак по 'students_count'  

select * from my_base.courses order by type, teacher_id desc, students_count;

