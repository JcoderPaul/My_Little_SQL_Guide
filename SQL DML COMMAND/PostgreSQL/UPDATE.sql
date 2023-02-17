
-- Обновляем данные и возвращаем результат запроса

UPDATE employee
SET company_id = 1,
    salary     = 1700
WHERE id = 10 OR id = 9
    RETURNING id, first_name || ' ' || last_name fio;
















