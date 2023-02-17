-- Создаем новую схему в базе, основное требование к синтаксису 
-- это написание команд SQL с большой буквы, хотя и с маленькой
-- буквы они проходят. Это необходимо для визуального разделения
-- команд и их содержимого.  
CREATE SCHEMA my_training_base; 


-- Создаем таблицу в базе с тремя полями 
-- без каких либо ограничений Constraints
-- наложенные на содержимое ячеек. 
CREATE TABLE my_training_base.company(
id INT,
company_name VARCHAR(128),
create_date DATE
);


-- Создаем таблицу с ограничениями на данные содержащиеся в ней:
-- PRIMARY KEY - Уникальный цифровой идентификатор
-- UNIQUE - содержимое ячейки должно быть уникальным
-- NOT NULL - содержимое ячейки не может пустовать
-- CHECK - проверка при внесении данных, в нашем случае задан диапазон дат
CREATE TABLE my_training_base.well_known_firm(
id INT PRIMARY KEY,
company_name VARCHAR(128) UNIQUE NOT NULL,
create_date DATE NOT NULL CHECK (create_date > '1880-01-01' AND '2021-01-01' > create_date)
);