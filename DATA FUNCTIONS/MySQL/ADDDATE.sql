SELECT * FROM my_base.students;

SELECT registration_date, ADDDATE(registration_date, INTERVAL 10 DAY) FROM my_base.students;

SELECT registration_date, ADDDATE(registration_date, INTERVAL 5 YEAR) FROM my_base.students;

SELECT sysdate(), ADDDATE(sysdate(), INTERVAL -20 SECOND) as corection_date from dual;

SELECT sysdate(), ADDDATE(sysdate(), INTERVAL 25 MINUTE) as corection_date from dual;
                        
SELECT sysdate(), ADDDATE(sysdate(), INTERVAL -2 HOUR) as corection_date from dual;
                      
SELECT sysdate(), ADDDATE(sysdate(), INTERVAL 10 DAY) as corection_date from dual;    
    
# То же что и в предыдущем примере

SELECT sysdate(), ADDDATE(sysdate(), 10) as corection_date from dual;                   
             
SELECT sysdate(), ADDDATE(sysdate(), INTERVAL 12 WEEK) as corection_date from dual; 
                       
SELECT sysdate(), ADDDATE(sysdate(), INTERVAL -3 MONTH) as corection_date from dual; 
                    
SELECT sysdate(), ADDDATE(sysdate(), INTERVAL 3 QUARTER) as corection_date from dual;
                              
SELECT sysdate(), ADDDATE(sysdate(), INTERVAL 5 YEAR) as corection_date from dual;

SELECT sysdate(), ADDDATE(sysdate(), INTERVAL '12.000001' SECOND_MICROSECOND) as corection_date from dual;

SELECT sysdate(), ADDDATE(sysdate(), INTERVAL '3:12.000001' MINUTE_MICROSECOND) as corection_date from dual;

SELECT sysdate(), ADDDATE(sysdate(), INTERVAL '3:12' MINUTE_SECOND) as corection_date from dual;

SELECT sysdate(), ADDDATE(sysdate(), INTERVAL '1:03:12.000001' HOUR_MICROSECOND) as corection_date from dual;

SELECT sysdate(), ADDDATE(sysdate(), INTERVAL '1:03:12' HOUR_SECOND) as corection_date from dual;
                                         
SELECT sysdate(), ADDDATE(sysdate(), INTERVAL '1:03' HOUR_MINUTE) as corection_date from dual;
                                    
SELECT sysdate(), ADDDATE(sysdate(), INTERVAL '7 1:03:12.000001' DAY_MICROSECOND) as corection_date from dual; 

SELECT sysdate(), ADDDATE(sysdate(), INTERVAL '7 1:03:12' DAY_SECOND) as corection_date from dual; 

SELECT sysdate(), ADDDATE(sysdate(), INTERVAL '7 1:03' DAY_MINUTE) as corection_date from dual;

SELECT sysdate(), ADDDATE(sysdate(), INTERVAL '7 1' DAY_HOUR) as corection_date from dual;
                                
SELECT sysdate(), ADDDATE(sysdate(), INTERVAL '5-3' YEAR_MONTH) as corection_date from dual;

SELECT sysdate(), next_day(sysdate(), 1) as corection_date from dual;