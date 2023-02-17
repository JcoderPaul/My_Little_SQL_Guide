
-- Вывести все записи из таблицы employee отсортированные по зарплате
-- первые два - LIMIT 2

SELECT *
FROM employee
ORDER BY salary
LIMIT 2;


-- Вывести (Выбрать) уникальные записи с полями id, first_name, last_name, salary
-- из таблицы employee с 'ALIAS' (псевдонимом) empl
-- отсортированных по полям first_name, salary от большего к меньшему 'DESC'

SELECT DISTINCT id,
                first_name AS f_name,
                last_name AS l_name,
                salary
FROM employee AS empl
ORDER BY first_name, salary DESC













