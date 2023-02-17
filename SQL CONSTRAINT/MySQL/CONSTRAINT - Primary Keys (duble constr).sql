# При создании таблицы создается основной ключ (он уникален и не null)
# При этом мы можем 'эмулировать' подобное сочетание, как на одном столбце,
# так и на паре, как в примере связав два not null столбца уникальным ключем. 

CREATE TABLE my_base.rich_teacher (
  id_teacher INT NOT NULL AUTO_INCREMENT,
  teacher_name VARCHAR(45) NOT NULL,
  phone VARCHAR(45) NOT NULL,
  adress VARCHAR(255) NULL,
  id_faculties INT NULL,
  PRIMARY KEY (id_teacher),
  CONSTRAINT unc_phone_name UNIQUE (teacher_name, phone)
  );