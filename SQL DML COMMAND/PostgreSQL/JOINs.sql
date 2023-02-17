-- JOIN
-- CROSS JOIN
-- LEFT JOIN
-- RIGHT JOIN
-- FULL JOIN

SELECT c.name,
       employee.first_name || ' ' || employee.last_name fio,
       ec.contact_id,
       c2.number
FROM employee
         JOIN company c
              ON employee.company_id = c.id
         JOIN employee_contact ec
              ON employee.id = ec.employee_id
         JOIN contact c2
              ON ec.contact_id = c2.id;

-- 

SELECT *
FROM company
CROSS JOIN (select count(*) FROM employee) t;

-- LEFT JOIN и таблица company AS с - "Левая" таблица и
-- ее данные будут присутствовать в выборке гарантированно
-- таблица employee e - "Правая" и данные из нее не 
-- пересекающиеся с "Левой" таблицей в выборку не попадут

SELECT c.name,
       e.first_name
FROM company c
LEFT JOIN employee e
ON c.id = e.company_id;

--

SELECT c.name,
       e.first_name
FROM employee e
LEFT JOIN company c
on e.company_id = c.id;

-- RIGHT JOIN и таблица company AS с - "Правая" таблица и
-- ее данные будут присутствовать в выборке гарантированно,
-- теперь таблица employee AS e "Левая" и данные из нее
-- не попадут в выборку при отсутствии пересечений полей с 
-- таблицей company

SELECT c.name,
       e.first_name
FROM employee e
RIGHT JOIN company c
ON e.company_id = c.id;

--

SELECT c.name,
       e.first_name
FROM employee e
CROSS JOIN company c;