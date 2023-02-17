# - MySQL LEFT OUTER JOIN. Этот тип соединения возвращает все строки из таблиц 
# с левосторонним соединением, указанным в условии ON, и только те строки из другой 
# таблицы, где объединяемые поля равны.
# - MySQL LEFT OUTER JOIN. Работате как описанный выше только в обратную сторону, покрайней
# мере судя по тестам
# Слева от JOIN или справа.
# **************************************************************************************

SELECT # Беруться поля из 2-х таблиц
my_base.subscriptions.student_id, 
my_base.students.name, 
my_base.subscriptions.course_id
FROM my_base.subscriptions # Поля этой таблицы сравниваются с
LEFT JOIN my_base.students # полями этой таблицы (в которой есть два условно лишних студента 
# т.е. их 'student_id' нет в таблице 'subscriptions')
# Результат объединения двух таблиц (не будет содержать этих студентов) т.е. 
# выведуться только даные совпавшие со 'subscriptions.student_id'
ON my_base.subscriptions.student_id = my_base.students.student_id; 

# **************************************************************************************
# Данный пример почти похож на первый, только сначала данные беруться из таблицы
# 'my_base.students' и объеденяются по условию с таблицей 'my_base.subscriptions'
# и тут результат итоговый будет содержать еще двух студентов о которых в 'правой таблице' 
# сведений нет.
SELECT 
my_base.subscriptions.student_id, 
my_base.students.name, 
my_base.subscriptions.course_id
FROM my_base.students
LEFT JOIN my_base.subscriptions
ON my_base.subscriptions.student_id = my_base.students.student_id;

