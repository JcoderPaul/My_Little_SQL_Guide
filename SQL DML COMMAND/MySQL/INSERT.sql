# The INSERT statement allows you to insert one or more rows into a table. 
# The following illustrates the syntax of the INSERT statement:
# - INSERT INTO table(c1,c2,...) VALUES (v1,v2,...);

INSERT INTO my_base.students (name, age, registration_date)
VALUES ('Мефодий Буслаев', '23', '2015-11-03 00:00:00');

# В характеристиках таблицы поля 'name' и 'registration_date' не могут быть null
# возраст да.
INSERT INTO my_base.students (name, registration_date)
VALUES ('Таня Гроттер', '2015-11-03 00:00:00');

# У барышень возраст не спрашивают, он может быть null
INSERT INTO my_base.students (name, registration_date)
VALUES ('Таня Гроттер', '2015-11-03 00:00:00');

# Вставляем данные и размещаем поля по своему усмотрению.
INSERT INTO my_base.students (registration_date, name)
VALUES ('1315-11-03 00:00:00', 'Аида Плаховна Мамзелькина');

INSERT INTO my_base.students (name, age, registration_date)
VALUES ('Петруччо Чимоданов', null, '2005-10-03 00:00:00');

# Столбец type имеет заранее оговоренный набор данных и что-то другое ввести не удасться
# enum('DESIGN','PROGRAMMING','MARKETING','MANAGEMENT','BUSINESS') и данно поле 'NOT NULL'
INSERT INTO my_base.courses (type) VALUES ('MARKETING');


insert into shops (shop_name, adress) values ("Burevesnic","Ufa, Rihorda Zorge, 17");

insert into products (product_name, price, shop_id) values ("Balsam Eremel",355.9,"5");