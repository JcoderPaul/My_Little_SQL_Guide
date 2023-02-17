SELECT * FROM my_base.courses;

select name, teacher_id from my_base.courses where teacher_id in (10, 12); # Выводит все строки со значениями teacher_id строго 10 или  12

select name, teacher_id from my_base.courses where teacher_id between 10 and 20; # Выводит все строки со значениями teacher_id от 10 до 20