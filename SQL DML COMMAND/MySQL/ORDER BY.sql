# ORDER BY - cортируем таблицу по столбцу 'name' от меньшего к большему, в данном случае 
# ASC или сортировка по возрастанию применена по умолчанию

select name,teacher_id, price from my_base.courses where teacher_id < 10 order by 1;
