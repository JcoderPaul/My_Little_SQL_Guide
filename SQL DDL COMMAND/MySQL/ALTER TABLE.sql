# ALTER TABLE используется для добавления, изменения или удаления столбцов в таблице. 
# Оператор MySQL ALTER TABLE также используется для переименования таблицы.

ALTER TABLE my_base.old_students # Куда добавили столбцы
ADD raiting int NOT NULL default 5 # Название столбца который добавили в таблицу
AFTER course_name, # после столбца который добавили 
ADD phone_num varchar(35) NULL default '555.666.777' # Еще один добавленный столбец
AFTER name; # который идет после столбца 'name'

# Поменяли настройки столбца phone_num, сделав его NOT NULL и сменив дефолтное значение
ALTER TABLE my_base.old_students 
modify phone_num varchar(15) not NULL default '444.333.222';

# Добавляем элемент в таблицу и проверяем результат предыдущего 'MODIFY'
INSERT INTO my_base.old_students (name, age, course_name) 
VALUES ('Бяка Буков', '56', 'MySQL ');

# Удалили колонку 'raiting'
ALTER TABLE my_base.old_students DROP COLUMN raiting;

# Переименовали столбец 'phone_num' на 'phone' 
ALTER TABLE my_base.old_students CHANGE COLUMN phone_num phone 
varchar(15) NOT NULL default '111-222-333-4';

# проверили изменения
INSERT INTO my_base.old_students (name, age, course_name) 
VALUES ('Каляка Малякова', '65', 'MySQL');