SELECT * FROM my_base.students;

select sysdate() as now_date from dual;

SELECT DATE_FORMAT('2014-11-28', '%Y') as data_res from dual; #Результат:   2014   
 
SELECT DATE_FORMAT('2014-11-01', '%M %d, %Y') as data_res from dual; #Результат:   November 01, 2014 
 
SELECT DATE_FORMAT('2014-11-01', '%M %e %Y') as data_res from dual; #Результат:   November 1 2014   
 
SELECT DATE_FORMAT('2014-11-28', '%W, %M %e, %Y') as data_res from dual; #Результат:   Friday, November 28, 2014   
 
SELECT DATE_FORMAT('2014-11-28', '%W') as data_res from dual;

SELECT YEAR(registration_date) FROM my_base.students;