# Обновили имя в таблице по номеру id

UPDATE my_base.manipulation_tab
SET name = 'Николай Романов II'
WHERE id = 5;

# Поменяли имя и добавили данные в поле money по заданному id

UPDATE my_base.manipulation_tab
SET name = 'Александр Романов III', money = 4000
WHERE id = 8;

# Изменили сразу несколько строк в таблице по условию

UPDATE my_base.manipulation_tab
SET money = 1000 * id
WHERE id > 8 and id < 15;


