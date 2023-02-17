SELECT * FROM my_base.students;

# В столбце name мы выбираем и выводи все что находится после 4-го символа все до конца
select substr(name, 4) from my_base.students;

# В столбце name мы выбираем и выводи все что находится после 6-го символа + еще 5-ть символов
select substr(name, 6, 5) from my_base.students;

SELECT SUBSTR('Function SUBSTR', 1, 8) as res from dual;

# Выводим справа т.е. с -n-ой позиции , n-е количество символов
SELECT SUBSTR('Function SUBSTR', -3, 3) as res from dual; 