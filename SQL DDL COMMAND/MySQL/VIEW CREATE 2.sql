# VIEW (представление) не является физической таблицей, а скорее представляет собой виртуальную таблицу, 
# созданную запросом, соединяющим одну или несколько таблиц.
# 
# Синтаксис:
# CREATE [OR REPLACE] VIEW view_name AS
# SELECT columns
# FROM tables
# [WHERE conditions];

# ********************************************************************************************
# Создание VIEW с именем 'AVG_ACTIV'

CREATE VIEW AVG_ACTIV AS
select 
course_name, extract(YEAR FROM subscription_date) as year, 
count(extract(MONTH FROM subscription_date)) as col_sell, 
max(extract(MONTH FROM subscription_date)) as max_month,
min(extract(MONTH FROM subscription_date)) as min_month,
count(extract(MONTH FROM subscription_date)) / 
(max(extract(MONTH FROM subscription_date)) - min(extract(MONTH FROM subscription_date)) + 1) as avg_sale
FROM my_base.purchaselist
where extract(YEAR FROM subscription_date) = 2018
group by course_name;

# Просмотр содержания всех столбцов созданного VIEW (как с обычной таблицей)
SELECT * FROM AVG_ACTIV;

# ********************************************************************************************
# Можно изменить текущую структуру VIEW в MySQL, не удаляя его (DROP VIEW [IF EXISTS] view_name) 
# с помощью оператора ALTER VIEW.
#
# Синтаксис: 
# ALTER VIEW view_name AS SELECT columns FROM table WHERE conditions;

ALTER VIEW AVG_ACTIV AS
select 
course_name, extract(YEAR FROM subscription_date) as year, 
count(extract(MONTH FROM subscription_date)) as col_sell, 
max(extract(MONTH FROM subscription_date)) as max_month,
min(extract(MONTH FROM subscription_date)) as min_month,
count(extract(MONTH FROM subscription_date)) / 
(max(extract(MONTH FROM subscription_date)) - min(extract(MONTH FROM subscription_date)) + 1) as avg_sale
FROM my_base.purchaselist
where extract(MONTH FROM subscription_date) > 1 and extract(MONTH FROM subscription_date) < 6
group by course_name;

# Просмотр содержания всех столбцов измененного VIEW
SELECT * FROM AVG_ACTIV;

# ********************************************************************************************
# Удаление виртуальной таблицы с псевданимом AVG_ACTIV
DROP VIEW IF EXISTS AVG_ACTIV;