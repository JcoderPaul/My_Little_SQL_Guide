# MySQL оператор UNION используется для объединения наборов результатов из 2-ух или 
# более SELECT запросов. Он удаляет повторяющиеся строки между различными 
# предложениями SELECT (т.е. оставляет только уникальные поля, как SET в JAVA).

# Каждое предложение SELECT в операторе UNION должно иметь одинаковое количество 
# полей в наборах результатов с одинаковыми типами данных.

# - В обоих предложениях SELECT должно быть одинаковое количество expression.
# - Поскольку оператор UNION по умолчанию удаляет все повторяющиеся строки из 
#   результирующего набора, предоставление модификатора UNION DISTINCT не влияет на результаты.
# - Имена столбцов из первого предложения SELECT в операторе UNION используются в качестве 
#   имен столбцов для результирующего набора.

# Таблицы объединены и отсортированы по id

SELECT student_id as PERS_ID, 'Student' as type, name FROM my_base.students
union
SELECT teacher_id, 'Teacher' , name FROM my_base.teachers;

# Объединили две разные таблицы с похожими полями, остались только оригинальные 
# (не повторяющиеся) названия курсов.

SELECT name FROM my_base.courses
union
SELECT course_name FROM my_base.purchaselist;

SELECT teacher_id, name, salary FROM my_base.teachers where salary between 10000 and 25000
union
SELECT teacher_id, name, salary FROM my_base.teachers where salary between 18000 and 40000;