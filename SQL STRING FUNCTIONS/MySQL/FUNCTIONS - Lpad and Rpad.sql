# Формируем строку из 15 символов с права у нее будет находится 'Paul', а левую часть заполняет текст ' cool'
# Первый параметр LPAD текст к котрому будет приставляться слева другой текст,
# Второй параметр длинна всего текста после приставления к нему слева третьего параметра
# Третий параметр текст который будет приставлен слева к первому параметру
# При этом длина итоговой строки не может быть больше длинны второго параметра (в нашем случае 15), 
# приставляемый текст может обрезаться см. пример ниже.   

select lpad('Paul', 15, ' coll') as lpad_test, length(lpad('Paul', 15, ' coll')) as length_of_res from dual;

# При втором параметре 17 результат вывода будет ' coll coll coPaul' , т.е. буквы 'll' утеряны. 

select lpad('Paul', 17, ' coll') as lpad_test, length(lpad('Paul', 15, ' coll')) as length_of_res from dual;

# Тот же эффект, что и в случае с LPAD, но текст ' coll' приставляется к тексту 'Paul' справа.

select rpad('Paul', 15, ' coll') as lpad_test, length(lpad('Paul', 15, ' coll')) as length_of_res from dual;

SELECT id, name, rpad(name, 45, '$') as name_var, length(rpad(name, 45, '$')) as name_var_length FROM my_base.students;