# Выбрать всю информацию (из всех столбцов) таблицы 'courses' базы даных 'my_base'
SELECT * FROM my_base.courses;

# DISTINCT - извлечение только уникальных значений полей базы данных
SELECT distinct type FROM my_base.courses; # Извлекаем уникальные значения из столбца 'type'

SELECT distinct type, teacher_id FROM my_base.courses; # Извлекаем уникальные значения из столбцов 'type' и 'teacher_id'

SELECT distinct type, duration FROM my_base.courses; # Извлекаем уникальные значения из пары столбцов 'type' и 'duration'