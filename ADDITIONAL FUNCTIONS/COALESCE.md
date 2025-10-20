### MySQL функция COALESCE

MySQL функция COALESCE возвращает первое ненулевое выражение в списке.

Синтаксис MySQL функции COALESCE:

    COALESCE( expression1, expression2, ... expression_n )

Параметры:
- expression1, expression2, ... expression_n - выражения для проверки 
                                               ненулевых значений.

---
**!!! ВНИМАНИЕ !!!**

Если все выражения будут иметь значение null, функция COALESCE вернет 
значение null.

Функция COALESCE может использоваться в следующих версиях MySQL:
MySQL 5.7, MySQL 5.6, MySQL 5.5, MySQL 5.1, MySQL 5.0, MySQL 4.1, MySQL 4.0, MySQL 3.23

---
Например см. в [COALESCE.SQL](./MySQL/COALESCE.sql):

    SELECT COALESCE('A', 'B', null, 'C', 'D');

**Результат:  A**                                  

    SELECT COALESCE(null, null, null, 'A', 'B');

**Результат:  A**

    SELECT COALESCE(null, 1, 2, 3, null, 4);

**Результат:  1**

    SELECT COALESCE(null, 'May 1945', 'Apr 1961');

**Результат:  May 1945**

    SELECT COALESCE(null, null, null, null, null);

**Результат:  NULL**
