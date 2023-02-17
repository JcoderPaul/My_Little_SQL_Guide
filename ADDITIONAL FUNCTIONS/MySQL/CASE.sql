SELECT * FROM my_base.students;
	
# CASE оценивает условия и возвращать значение при выполнении первого выполнившегося условия.

SELECT name, length(name) as name_length, age, registration_date,  
CASE
  WHEN length(name) < 27 THEN 'Сработало ПЕРВОЕ условие.'
  WHEN age > 40 THEN 'Сработало ВТОРОЕ условие.'
  WHEN registration_date > '2017-01-01' THEN 'Сработало ТРЕТЬЕ условие.'
  ELSE 'Ничего не сработало'
END as res_test
FROM my_base.students;

# ***********************************************************************************    
SELECT name, age,
CASE
  WHEN (age >= 20 and age < 30) THEN 'Возраст больше, чем 20'
  WHEN (age >= 30 and age < 40) THEN 'О, уже за 30!'
  ELSE 'Или молодь или совсем старичек!'
END as res_test
FROM my_base.students 
order by age;

# ***********************************************************************************
SELECT name, age,
CASE age*1
  WHEN 20 THEN 'Вот тебе уже и 20'
  WHEN 30 THEN 'О, уже 30!'
  WHEN 40 THEN 'Да, уже и 40!'
  ELSE 'Блуждают где то между юбилеями!'
END as res_test
FROM my_base.students 
order by age;

# ***********************************************************************************
SELECT name, length(name) as name_length,
CASE
  WHEN length(name) < 10 THEN 'Любит краткость!'
  WHEN (length(name) >= 10 and length(name) < 30) THEN 'Нормально так!'
  WHEN (length(name) >= 30 and length(name) < 40) THEN 'Хрен запомнишь!'
  ELSE 'А у вас оригинальные родители!'
END as res_test
FROM my_base.students 
order by name;