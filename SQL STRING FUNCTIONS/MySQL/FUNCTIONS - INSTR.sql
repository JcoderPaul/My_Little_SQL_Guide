# Делаем выборку по столбцу name при помощи 'instr', где первым параметром идет имя столбца 'name'
# вторым параметром символ или набор символов который мы ищем находящийся на n-м месте, в нашем 
# примере на 3-м и 1-м  

select * from my_base.students where instr(name, 'а') = 3;

select * from my_base.students where instr(name, 'Ша') = 1;

# Пример выборки по месяцу из даты регистрации

select * from my_base.students where instr(registration_date, '03') = 6;

select * from my_base.students where instr(age, '2') = 2;

# Находит позицию первого вхождения параметра 2 в параметр 1, в нашем случае 'u' 
# находится на 2-м месте в строке 'Paul Yuing'

select instr('Paul Yuing', 'u') as position_num from dual;
