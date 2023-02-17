# Обновили возраст ученика в таблице manipulation_tab по id, который соответствует id из таблицы
# teachers при таком же возрасте учителя и зарплатой учителя больше 5000

UPDATE my_base.manipulation_tab
SET age = 28
WHERE id = (SELECT teacher_id from my_base.teachers where age = 28 and salary > 5000);

# Поменяли имя и добавили данные в поле money используя два подселекта

UPDATE my_base.manipulation_tab
SET name = 'Екатерина Сумская', money = (select max(salary) from my_base.teachers)
WHERE id = (SELECT teacher_id from my_base.teachers where age = 18 and salary > 5000);

# Изменили сразу несколько строк в таблице по условию

UPDATE my_base.manipulation_tab
SET money = 1000 * id
WHERE id > 8 and id < 15;

