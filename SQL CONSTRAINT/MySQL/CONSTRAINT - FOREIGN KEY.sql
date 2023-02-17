ALTER TABLE my_base.rich_teacher 
ADD INDEX id_faculties_idx (id_faculties ASC) VISIBLE;

# Для таблицы my_base.rich_teacher задали FOREIGN KEY из таблицы my_base.vip_faculties
# по столбцу id_faculties, т.е. если столбец id_faculties в таблице my_base.vip_faculties
# содержит значения в определенном диапазоне, то только эти значения можно поместить в столбец
# id_faculties таблицы my_base.rich_teacher, любая попытка внести значения за пределами диапазона
# выдаст ошибку.

ALTER TABLE my_base.rich_teacher # Вносим изменения в таблицу
ADD CONSTRAINT id_faculties # добавляем ограничения для столбца в виде 
FOREIGN KEY (id_faculties) # связи (ссылки) на столбец
REFERENCES my_base.vip_faculties (id_faculties) # из целевой таблицы (с указанием столбца связки) 
# При удалении (изменении) ссылочного параметра из таблицы my_base.vip_faculties ничего не делать
# с таблицей my_base.rich_teacher (можно использовать SET NULL, CASCADE) 
ON DELETE NO ACTION 
ON UPDATE NO ACTION;
  
# Проверка внесеня данных.  
INSERT INTO my_base.rich_teacher (teacher_name, phone, adress, id_faculties) 
VALUES ('Красная Пашечка', '555-453-556', 'Moskow, Zimina 34-234', '3');

INSERT INTO my_base.rich_teacher (teacher_name, phone, adress, id_faculties) 
VALUES ('Волк Серый', '555-275-126', 'Kiev, Bolshaya Polana 14', '1');