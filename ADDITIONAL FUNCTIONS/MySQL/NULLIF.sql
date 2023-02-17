# MySQL функция NULLIF возвращает NULL, если два выражения эквивалентны. 
# В противном случае возвращается первое выражение.
# NULLIF( expression1, expression2 ) 
# где expression1 и expression2 - два выражения для проверки эквивалентного expression1 = expression2.

# Примечание !!!
# Функция NULLIF вернет NULL, если expression1 = expression2 (равно).
# Функция NULLIF вернет expression1, если expression1 ! = expression2 (не равно).

SELECT NULLIF('google.com', 'google.com') as res_test from dual; #Результат:   NULL                               
 
SELECT NULLIF('google.com', 'yandex.ru') as res_test from dual; #Результат:   google.com
  
SELECT NULLIF(3, 3) as res_test from dual; #Результат:   NULL 
 
SELECT NULLIF(3, 4) as res_test from dual; #Результат:   3