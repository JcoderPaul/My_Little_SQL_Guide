SELECT * FROM my_base.courses;

# MOD - остаток от деления 7/3 => 2*3 + 1 вот эта 1 и будет остаток.

select mod(7 , 3) as res_mod from dual; # Результат 1
select mod(8 , 3) as res_mod from dual; # Результат 2

select mod(9 , 3) as res_mod from dual; # Результат 0

select mod(9 , 0) as res_mod from dual; # На ноль делить нельзя но он это делает NULL

select mod(-39 , 5) as res_mod from dual; # Ответ -4

select mod(-39 , -5) as res_mod from dual; # Ответ -4

select mod(39 , 5) as res_mod from dual; # Ответ 4

select mod(39 , -5) as res_mod from dual; # Ответ 4

SELECT * FROM my_base.courses where mod(id , 2) = 0;

SELECT id, name, mod(id , 3)+1 as team FROM my_base.students order by 3;
