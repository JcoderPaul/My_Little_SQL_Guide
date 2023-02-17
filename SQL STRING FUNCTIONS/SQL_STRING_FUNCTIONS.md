### **************** Символьные / строчные функции Oracle PL/SQL ****************

Некоторых функций в явном виде не существует в MySQL и PostgreSQL

- [CONCAT](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/CONCAT.txt) - Функция Oracle/PLSQL CONCAT позволяет соединить вместе две строки ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/MySQL/FUNCTIONS%20-%20CONCAT.sql)).
- ОПЕРАТОР КОНКАТЕНАЦИИ || - Oracle/PLSQL оператор конкатенации || позволяет 
                           объединить две или более строк вместе.
- [INSTR](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/INSTR.txt) - Oracle/PLSQL функция INSTR возвращает n-е вхождение подстроки в строке ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/MySQL/FUNCTIONS%20-%20INSTR.sql)).

- INSTR2 - Функция Oracle/PLSQL INSTR2 возвращает вхождение подстроки в строку, 
         используя UCS2 кодовые точки.
- INSTR4 - Функция Oracle/PLSQL INSTR4 возвращает вхождение подстроки в строку, 
         используя UCS4 кодовые точки.
- INSTRB - Функция Oracle/PLSQL INSTRB возвращает вхождение подстроки в строку, 
         байты вместо символов.
- INSTRC - Функция Oracle/PLSQL INSTRC возвращает вхождение подстроки в строку, 
         используя Unicode полные символов.

- [LENGTH](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/LENGTH.txt) - Функция Oracle/PLSQL LENGTH возвращает длину указанной строки ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/MySQL/FUNCTIONS%20-%20LENGTH.sql)).

- LENGTH2 - Функция Oracle/PLSQL LENGTH2 возвращает длину указанной строки, 
          используя UCS2 кодовые точки.
- LENGTH4 - Функция LENGTH4 возвращает длину указанной строки, используя UCS4 
          кодовые точки.
- LENGTHB - Функция Oracle/PLSQL LENGTHB возвращает длину указанной строки, 
          используя байты вместо символов.
- LENGTHC - Функция Oracle/PLSQL LENGTHC возвращает длину указанной строки, 
          используя полные символы Unicode.

- [LOWER](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/LOWER.txt) - Функция Oracle/PLSQL LOWER преобразует все символы в заданной строке в 
        нижний регистр. Если есть символы в строке, которые не являются буквами, 
        они не влияют на эту функцию ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/MySQL/FUNCTIONS%20-%20Lower%20and%20Upper.sql)) .
- [LPAD](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/LPAD.txt) - Функция Oracle/PLSQL LPAD добавляет с левой части строки определенный 
       набор символов (при не нулевом string1) ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/MySQL/FUNCTIONS%20-%20Lpad%20and%20Rpad.sql)).
- [REPLACE](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/REPLACE.txt) - Функция Oracle/PLSQL REPLACE заменяет последовательность символов в строке другим 
          набором символов ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/MySQL/FUNCTIONS%20-%20REPLACE.sql)).
- [RPAD](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/RPAD.txt) - Функция Oracle/PLSQL RPAD дополняет с правой части строки определенный набор 
       символов (при не нулевом string1) ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/MySQL/FUNCTIONS%20-%20Lpad%20and%20Rpad.sql)).
- [SUBSTR](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/SUBSTR.txt) - Функция Oracle/PLSQL SUBSTR позволяет извлекать подстроку из строки ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/MySQL/FUNCTIONS%20-%20SUBSTR.sql)).
- [TRIM](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/TRIM.txt) - Функция Oracle / PLSQL TRIM удаляет все указанные символы с начала или 
       окончания строки ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/MySQL/FUNCTIONS%20-%20TRIM.sql)).
- [UPPER](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/UPPER.txt) - Функция Oracle/PLSQL UPPER преобразует все символы строки в верхний регистр ([MySQL пример](https://github.com/JcoderPaul/My_Little_SQL_Guide/blob/master/SQL%20STRING%20FUNCTIONS/MySQL/FUNCTIONS%20-%20Lower%20and%20Upper.sql)). 
        Если есть символы в строке, которые не являются буквами, они не влияют на эту функцию.

- ASCII - Функция Oracle/PLSQL ASCII возвращает числовое представление 
        крайнего левого символа строки.
- ASCIISTR - Функция Oracle/PLSQL ASCIISTR преобразует строку любого 
           набора символов к ASCII строке, используя набор символов базы данных.
- CHR - Функция Oracle/PLSQL CHR является противоположностью функции ASCII. 
      CHR возвращает символ, который основан на числовом коде.
- COMPOSE - Функция Oracle/PLSQL COMPOSE возвращает строку Unicode.

- DUMP - Функция Oracle/PLSQL DUMP возвращает значение varchar2, который включает 
       код типа данных, длину в байтах, и внутреннее представление выражения.
- INITCAP - Функция Oracle/PLSQL INITCAP устанавливает первый символ каждого слова 
          в верхний регистр, а остальные в нижний регистр.

- LTRIM - Функция Oracle/PLSQL LTRIM удаляет все указанные символы с левой стороны 
        строки.
- NCHR - Функция Oracle/PLSQL NCHR возвращает символ на основе number_code в  
       национальной кодировке.
- REGEXP_INSTR - Функция Oracle/PLSQL REGEXP_INSTR является расширением функции INSTR. 
               Она возвращает местоположение шаблона регулярного выражения в строке. 
               Эта функция, представленная в Oracle 10g, позволит вам найти подстроку 
               в строке, используя сопоставление шаблонов регулярных выражений.
- REGEXP_LIKE - Oracle условие REGEXP_LIKE позволяет выполнять регулярные выражения в  
              предложении WHERE в запросах SELECT, INSERT, UPDATE или DELETE.
- REGEXP_REPLACE - Функция Oracle/PLSQL REGEXP_REPLACE является расширением функции REPLACE. 
                 Эта функция, введенная в Oracle 10g, позволит вам заменить последовательность 
                 символов в строке другим набором символов, используя сопоставление шаблонов 
                 регулярных выражений.
- REGEXP_SUBSTR - Функция Oracle/PLSQL REGEXP_SUBSTR является расширением функции SUBSTR. 
                Эта функция, представленная в Oracle 10g, позволит вам извлечь подстроку 
                из строки, используя сопоставление шаблонов регулярных выражений.
- RTRIM - Функция Oracle/PLSQL RTRIM удаляет все указанные символы из правой части строки.
- SOUNDEX - Функция Oracle/PLSQL SOUNDEX возвращает фонетическое представление 
          (так, как это звучит) строки.
- TO_CHAR - Функция Oracle/PLSQL TO_CHAR преобразует число или дату в строку.
- TRANSLATE - Функция Oracle/PLSQL TRANSLATE заменяет последовательность символов в строке 
            другим набором символов. Тем не менее она заменяет один символ за один раз.
            
            Например, заменится первый символ в string_to_replace с первого символа в 
            replacement_string. Тогда будет заменен второй символ в string_to_replace 
            с вторым символом в replacement_string, и так далее.
- VSIZE - Функция Oracle/PLSQL VSIZE возвращает длину в байтах для внутреннего 
        представления выражения.