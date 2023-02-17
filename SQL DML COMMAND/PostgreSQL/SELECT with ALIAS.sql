-- Выбрать SELECT поля id, first_name, last_name, salary из FROM employee
-- К полю first_name применить псевдоним или ALIAS (AS в MySQL) в PostgreSQL его вообще можно опустить, как в примере строка ниже,
-- тут last_name l_name применяется псевдоним через пробел и явно AS не указывается.

-- Ограничение на количество выводимых 'на экран' записей LIMIT
-- Начиная с OFFSET записи или отступ, привязки к ID у данных операторов нет, поэтому
-- !!! применять их без сортировки весьма сомнительное занятие !!! 
-- т.к. каждый раз можно получать разную выборку

SELECT id,
       first_name AS f_name,
       last_name l_name,
       salary		
FROM employee empl
      LIMIT 2
      OFFSET 2;
