DELETE
FROM employee
WHERE salary IS NULL;

DELETE
FROM employee
WHERE salary = (SELECT max(salary) FROM employee);

DELETE
FROM company
WHERE id = 2;

DELETE
FROM employee
WHERE company_id = 1;















