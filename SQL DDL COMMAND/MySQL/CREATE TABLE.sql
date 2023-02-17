CREATE TABLE my_base.table_for_test # Создать таблицу 'table_for_test' в схеме 'my_base'
(
  id INT NOT NULL AUTO_INCREMENT, # поле (столбец) id - целочисленное, не может быть null с автоувеличением
  name VARCHAR(45) NOT NULL, # поле name - символьное длинной 45, не может быть null
  money DOUBLE NULL, # поле money - формата duble, может быть null 
  date DATE NULL, # поле date - формата дата, тоже может быть null
  PRIMARY KEY (id) # Поле id основной ключ таблицы 
);

INSERT INTO my_base.table_for_test (name)
VALUES ('Таня Гроттер');

CREATE TABLE my_base.table_2_test # Создать таблицу 'table_for_test' в схеме 'my_base'
(
  id INT NOT NULL AUTO_INCREMENT, # поле (столбец) id - целочисленное, не может быть null с автоувеличением
  name VARCHAR(155) NOT NULL, # поле name - символьное длинной 45, не может быть null
  salary DOUBLE NULL DEFAULT 255.5, # поле money - формата duble, по умолчанию 255.5
  date DATE NULL DEFAULT (DATE(curdate())), # поле date - формата дата, по умолчанию текущий день
  PRIMARY KEY (id) # Поле id основной ключ таблицы 
);

INSERT INTO my_base.table_2_test (name)
VALUES ('Таня Гроттер');
