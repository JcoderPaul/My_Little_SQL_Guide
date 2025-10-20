### MySQL функция CASE

MySQL функция CASE оценивает условия и возвращать значение при выполнении первого условия.

Синтаксис MySQL функции CASE:

    CASE [ expression ]
    WHEN condition_1 THEN result_1
    WHEN condition_2 THEN result_2
    
    ...
    
    WHEN condition_n THEN result_n
    ELSE result
    END

Параметры:
- expression - необязательный. Это значение, которое мы сравниваем со списком условий. 
               (То есть: condition_1, condition_2, ... condition_n)
- condition_1, condition_2, ... condition_n - оценивается в указанном порядке. Как только 
                                              условие оказывается истинным, функция CASE 
                                              возвращает результат и не оценивает условия 
                                              дальше.
- result_1, result_2, ... result_n - возвращаемое значение, как только условие оказывается 
                                     истинным.
---  
**!!! ВНИМАНИЕ !!!**
Если ни одно условие не будет найдено, то функция CASE вернет значение в предложении ELSE.
Если предложение ELSE опущено и условие не найдено, то оператор CASE вернет NULL.

Функция CASE может использоваться в следующих версиях MySQL:
MySQL 5.7, MySQL 5.6, MySQL 5.5, MySQL 5.1, MySQL 5.0, MySQL 4.1, MySQL 4.0, MySQL 3.23.3

---
### Использование expression и CASE

Пример использования функции CASE в SQL запросе, в которое включено expression.

    SELECT supplier_id,
    CASE quantity
      WHEN > 5 THEN 'Количество больше, чем 5'
      WHEN = 5 THEN 'Количество равно 5'
      ELSE 'Другое количество'
    END
    FROM suppliers;

В этом примере функции CASE expression представляет собой quantity, значение которого 
сравнивается с каждым из условий, пока не будет выполнено одно из них. Затем соответствующее 
значение будет возвращено функцией CASE.

---
### Использование CASE без включения expression

Пример использование функции CASE в SQL предложении, где expression отсутствует:

    SELECT
    CASE
      WHEN a < b THEN 1
      WHEN supplier_type = 'clothing' THEN 2
      ELSE 3
    END
    FROM suppliers;

В данном случае запрос SELECT идет с CASE но без expression, поэтому каждое условие индивидуально 
оценивается и может быть совершенно другим и уникальным. Когда условие выполнено, соответствующее 
значение будет возвращено.
