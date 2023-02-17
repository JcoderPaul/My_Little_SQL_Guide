SELECT * FROM my_base.students;

# MySQL функция COALESCE возвращает первое ненулевое выражение в списке.
# Синтаксис MySQL функции COALESCE: COALESCE( expression1, expression2, ... expression_n )
# где expression1, expression2, ... expression_n - выражения для проверки ненулевых значений.
# Если все выражения будут иметь значение null, функция COALESCE вернет значение null.

SELECT COALESCE('A', 'B', null, 'C', 'D') as res_test from dual; #Результат:  A                                  
 
SELECT COALESCE(null, null, null, 'A', 'B') as res_test from dual; #Результат:  A                                    
 
SELECT COALESCE(null, 1, 2, 3, null, 4) as res_test from dual; #Результат:  1 
 
SELECT COALESCE(null, 'May 1945', 'Apr 1961') as res_test from dual; #Результат:  May 1945                               
 
SELECT COALESCE(null, null, null, null, null) as res_test from dual; #Результат:  NULL